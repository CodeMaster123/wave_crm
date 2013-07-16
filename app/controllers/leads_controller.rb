class LeadsController < ApplicationController
  before_filter :authenticate_user!
  filter_access_to :all

  def index
      if current_user.account_type == 1 #Admin
          @company = current_user.company
          if params[:type] == "future"
              @leads = @company.leads.where('lead_status = \'future\'').paginate(:page => params[:page], :per_page => 15).all
          elsif params[:type] == "dead"
              @leads = @company.leads.where('lead_status = \'dead\'').paginate(:page => params[:page], :per_page => 15).all
          else
              @leads = @company.leads.where('lead_status != \'dead\' and lead_status != \'won\' and lead_status != \'future\' and lead_status != \'matured\'').paginate(:page => params[:page], :per_page => 15).all
              @leads.each do |l|
                  puts l.lead_status
              end
          end
          unless params[:id1].nil?
              @leads = Lead.paginate(:page => params[:page], :per_page => 15).where(:leadable_id => params[:id1], :leadable_type => "SalesExecutive")
              executive_name = SalesExecutive.where(:id => params[:id1]).first.user
              @page_title = "Leads by #{executive_name.first_name} #{executive_name.last_name}"
          end
      elsif current_user.account_type  == 2 #Team leader
          if params[:type] == "current"
              @leads = current_user.team_leader.leads.where('lead_status != \'dead\' and lead_status != \'won\' and lead_status != \'future\' and lead_status != \'future\'').paginate(:page => params[:page], :per_page => 15)
              @leads.each do |l|
                  puts l.lead_status
              end
          elsif params[:type] == "future"
              @leads = current_user.team_leader.leads.where('lead_status = \'future\'').paginate(:page => params[:page], :per_page => 15)
          else
              @leads = current_user.team_leader.leads.where('lead_status = \'dead\'').paginate(:page => params[:page], :per_page => 15)
          end
          @team = current_user.team_leader.sales_executives.each do |executive|
          end
      elsif current_user.account_type ==3 #Executive
          if params[:type] == "current"
              @leads = current_user.sales_executive.leads.where('lead_status != \'dead\' and lead_status != \'won\' != lead_status != \'future\'').paginate(:page => params[:page], :per_page => 15)
          elsif params[:type] == "future"
              @leads = current_user.sales_executive.leads.where('lead_status = \'future\'').paginate(:page => params[:page], :per_page => 15)
          else
              @leads = current_user.sales_executive.leads.where('lead_status = \'dead\'').paginate(:page => params[:page], :per_page => 15)
          end
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
      @lead_events = @lead.events.all
      @call_logs = @lead.call_logs
      @team_leaders = current_user.company.team_leaders
      @sales_executives = current_user.company.sales_executives

      unless @lead.contacts.empty?
          @lead_notifications = @lead.contacts.first.notifications.order(:updated_at)
      end

      #--- Modal variables for call logs ---
      @call_log = CallLog.new
      @call_owner = SalesExecutive.where(:company_id => current_user.company_id)

      #--- Modal variables for notifications ---
      @company = Company.where(:id => current_user.company_id).first
      @notification = Notification.new
      @contacts = @company.contacts.all
      @notifications_contact = @lead.contacts.all

      #--- Modal variables for events ---
      @event = Event.new

      respond_to do |format|
          format.html # show.html.erb
          format.json { render json: @lead }
      end
  end

  def new
      @company = Company.where(:id => current_user.company_id).first
      @lead = Lead.new
      @lead.contacts.build
      @lead.product_transactions.build
      @lead.build_account
      @team_leaders = @company.team_leaders.all
      @sales_executives = @company.sales_executives.all
      @products = @company.products.all

      respond_to do |format|
          format.html # new.html.erb
          format.json { render json: @lead }
      end
  end

  def edit
      @company = Company.where(:id => current_user.company_id).first
      @lead = Lead.find(params[:id])
      if @lead.contacts.empty?
          @lead.contacts.build
      end
      @products = @company.products.all
      @team_leaders = @company.team_leaders.all
      @sales_executives = @company.sales_executives.all
  end

  def create
      @company = current_user.company
      @products = @company.products.all
      @team_leaders = @company.team_leaders.all
      @sales_executives = @company.sales_executives.all

      @lead = @company.leads.new(params[:lead])
      if current_user.account_type == 2
          @lead.leadable_id = current_user.team_leader.id
          @lead.leadable_type = "TeamLeader"
      elsif current_user.account_type == 3
          @lead.leadable_id = current_user.sales_executive.id
          @lead.leadable_type = "SalesExecutive"
      end

      respond_to do |format|
          if @lead.save
              @lead.contacts.first.account_id = @lead.account.id
              format.html { redirect_to :leads, notice: 'Lead was successfully created.' }
              format.json { render json: @lead, status: :created, location: @lead }
          else
              format.html { render "new" }
              format.json { render json: @lead.errors, status: :unprocessable_entity }
          end
      end
  end

  def update
      @company = Company.where(:id => current_user.company_id).first
      @team_leaders = @company.team_leaders.all
      @sales_executives = @company.sales_executives.all
      @lead = @company.leads.find(params[:id])

      respond_to do |format|
          if @lead.update_attributes(params[:lead])
              format.html { redirect_to :leads, notice: 'Lead was successfully updated.' }
              format.json { head :no_content }
          else
              format.html { render "edit" }
              format.json { render json: @lead.errors, status: :unprocessable_entity }
          end
      end
  end

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
          @leads = Lead.search params[:q] , :with => {:company_id => current_user.company_id}
      elsif current_user.account_type == 2
          @leads = current_user.team_leader.leads.search params[:q], :with => {:company_id => current_user.company_id}
      elsif current_user.account_type == 3
          @leads = current_user.sales_executive.leads.search params[:q], :with => {:company_id => current_user.company_id}
      end
      respond_to do |format|
          format.html
          format.json { head :no_content }
      end
  end

  def change_owner
      puts params[:lead_id]

      Lead.find(params[:lead_id].to_i).update_attributes(:leadable_type => params[:leadable_type], :leadable_id => params[:leadable_id])
  end
end
