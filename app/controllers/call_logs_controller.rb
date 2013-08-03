class CallLogsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all

    def create
        #aparams = Hash.new
        #aparams = {:utf8 => params[:utf8], :authenticity_token => params[:authenticity_token], :commit => "Create Call log", :call_duration_minutes => params[:call_duration_minutes], :call_dration_seconds => params[:call_duration_seconds], :call_log => {:subject => params[:subject], :call_start_time => params[:call_start_time], :call_duration => 30, :call_purpose => params[:call_purpose]}}
        #params = aparams
        @call_owner = SalesExecutive.where(:company_id => current_user.company_id)
        @call_log = CallLog.new(params[:call_log])
        @call_log.call_duration = params[:call_duration_minutes].to_i * 60 + params[:call_duration_seconds].to_i
        @company = Company.where(:id => current_user.company_id).first
        @team_leaders = @company.team_leaders.all
        @sales_executives = @company.sales_executives.all

        respond_to do |format|
            if @call_log.save
                format.html { redirect_to @call_log, notice: 'Call log was successfully created.' }
                format.json { render json: @call_log, status: :created, location: @call_log }
            else
                format.html { render "new" }
                format.json { render json: @call_log.errors, status: :unprocessable_entity }
            end
        end
    end
   

    def create_log
        @call_log =CallLog.new(:call_result =>params[:call_result], :call_type => params[:call_type], :call_purpose => params[:call_purpose], :call_owner_id => params[:call_owner_id].to_i, :call_start_time => params[:call_start_time].to_date, :subject => params[:subject], :lead_id => params[:lead_id])#, :call_duration => :params[:call_duration].to_i)
        @call_log.save
    end
end
