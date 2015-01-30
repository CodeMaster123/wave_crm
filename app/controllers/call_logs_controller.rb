class CallLogsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    respond_to :html, :json

    def index

    end

    def create
        @call_log = CallLog.new(JSON.parse(params[:call_log]))
        @call_log.save

        respond_with @call_log, location: lead_call_logs_path
    end
end
