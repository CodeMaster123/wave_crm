class LeadsController < ApplicationController
  before_filter :authenticate_user!
  filter_access_to :all
  # GET /leads
  # GET /leads.json
  def index
    @follow_up_time = Lead.first.follow_ups.all(:order => 'follow_up_time').last.follow_up_time.strftime('%l:%M%p %d-%h')

    if current_user.account_type == 1
    @leads = Lead.all
    elsif current_user.account_type  == 2
      @leads = Lead.where(:lead_by => current_user.account_type, :executive_id => current_user.executive_id)
    elsif current_user.account_type ==3
      @leads = Lead.where(:lead_by => current_user.account_type, :executive_id => current_user.executive_id)
    end

      respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @leads }
    end
  end

  # GET /leads/1
  # GET /leads/1.json
  def show
    @lead = Lead.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lead }
    end
  end

  # GET /leads/new
  # GET /leads/new.json
  def new
    @lead = Lead.new

    @lead.contacts.build


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lead }
    end
  end

  # GET /leads/1/edit
  def edit
    @lead = Lead.find(params[:id])
  end

  # POST /leads
  # POST /leads.json
  def create
    @lead = Lead.new(params[:lead])
    puts "current_user iddddd"
    @lead.executive_id = current_user.id
    puts "user type"
    @lead.lead_by = current_user.account_type

    respond_to do |format|
      if @lead.save
        format.html { redirect_to @lead, notice: 'Lead was successfully created.' }
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
    @lead = Lead.find(params[:id])

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
end
