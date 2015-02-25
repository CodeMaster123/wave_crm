class CallLogsController < ApplicationController
    filter_access_to :all
    respond_to :html, :json

    def index

    end

    def create
      params[:call_log] = JSON.parse(params[:call_log]) if params[:call_log].class == String
      @call_log = CallLog.new(params[:call_log])

      @call_log.save

      respond_with @call_log, location: lead_call_logs_path
    end
end
