class CallLogsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    respond_to :html, :json

    def create_log
        @call_duration = (params[:call_duration_minutes].to_i * 60 + params[:call_duration_seconds].to_i)
        @call_log = CallLog.create(:call_result =>params[:call_result], :call_type => params[:call_type], :call_purpose => params[:call_purpose], :call_owner_id => params[:call_owner_id].to_i, :call_start_time => params[:call_start_time].to_date, :subject => params[:subject], :lead_id => params[:lead_id], :call_duration => @call_duration)
    end
end
