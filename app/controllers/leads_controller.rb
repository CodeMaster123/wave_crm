class LeadsController < ApplicationController
  before_filter :authenticate_user!
  filter_access_to :all
  layout :choose_layout

  def choose_layout
      if action_name == 'search'
          false
      else
          'application'
      end
  end

  def index
      unless (Lead.first.nil? || Lead.first.follow_ups.empty?)
          @follow_up_time = Lead.first.follow_ups.all(:order => 'follow_up_time').last.follow_up_time.strftime('%l:%M%p %d-%h')
      end

      if current_user.account_type == 1
        @company = Company.where(:id => current_user.company_id).first
        @leads = @company.leads.paginate(:page => params[:page], :per_page => 15).all
          unless params[:id1].nil?
              @leads = Lead.paginate(:page => params[:page], :per_page => 15).where(:leadable_id => params[:id1], :leadable_type => "SalesExecutive")
              executive_name = SalesExecutive.where(:id => params[:id1]).first.user
              @page_title = "Leads by #{executive_name.first_name} #{executive_name.last_name}"
          end
      elsif current_user.account_type  == 2
          @leads = current_user.team_leader.leads.paginate(:page => params[:page], :per_page => 15)
          @team = current_user.team_leader.sales_executives.each do |executive|
          end
      elsif current_user.account_type ==3
          @leads = current_user.sales_executive.leads.paginate(:page => params[:page], :per_page => 15)
      elsif current_user.account_type ==4
          @leads = Lead.all.paginate(:page => params[:page], :per_page => 15)
      end

      respond_to do |format|
          format.html # index.html.erb
          format.json { render json: @leads }
      end
  end

  def show
      @lead = Lead.find(params[:id])

      respond_to do |format|
          format.html # show.html.erb
          format.json { render json: @lead }
      end
  end

  def new
      @lead = Lead.new
      @lead.contacts.build
      @lead.follow_ups.build
      @lead.leads_products.build

      @products = Product.all

      respond_to do |format|
          format.html # new.html.erb
          format.json { render json: @lead }
      end
  end

  # GET /leads/1/edit
  def edit
      @lead = Lead.find(params[:id])
  end

  def create
    @company = Company.where(:id => current_user.company_id).first
    @lead = @company.leads.new(params[:lead])
      @lead.leadable_id = current_user.id
      @lead.leadable_type = current_user.class.name
      @products = Product.all
    @lead.company_id = @company.id

    respond_to do |format|
          if @lead.save
              #@follow_up = FollowUp.create(:lead_id = @lead.id,
              format.html { redirect_to :leads, notice: 'Lead was successfully created.' }
              format.json { render json: @lead, status: :created, location: @lead }
          else
              format.html { render action: "new" }
              format.json { render json: @lead.errors, status: :unprocessable_entity }
          end
      end
  end

  # PUT /leads/1
  # PUT /leads/1.json
  def update
    @company = Company.where(:id => current_user.company_id).first
    @lead = @company.leads.find(params[:id])

      respond_to do |format|
          if @lead.update_attributes(params[:lead])
              format.html { redirect_to @lead, notice: 'Lead was successfully updated.' }
              format.json { head :no_content }
          else
              format.html { render action: "edit" }
              format.json { render json: @lead.errors, status: :unprocessable_entity }
          end
      end
  end

  # DELETE /leads/1
  # DELETE /leads/1.json
  def destroy
      @lead = Lead.find(params[:id])
      @lead.destroy

      respond_to do |format|
          format.html { redirect_to leads_url }
          format.json { head :no_content }
      end
  end

  def search
      if current_user.account_type == 1
          @leads = Lead.where("title like \'%#{params[:q]}%\'")
      elsif current_user.account_type == 2
          @leads = current_user.team_leader.leads.where("\'%#{params[:q]}%\'")
      elsif current_user.account_type == 3
          @leads = current_user.sales_executive.leads.where("\'%#{params[:q]}%\'")
      end
      respond_to do |format|
          format.html
          format.json { head :no_content }
      end
  end
end
