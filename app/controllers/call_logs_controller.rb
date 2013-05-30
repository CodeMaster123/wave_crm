class CallLogsController < ApplicationController
    # GET /call_logs
    # GET /call_logs.json
    def index
        @call_logs = CallLog.all

        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @call_logs }
        end
    end

    # GET /call_logs/1
    # GET /call_logs/1.json
    def show
        @call_log = CallLog.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @call_log }
        end
    end

    # GET /call_logs/new
    # GET /call_logs/new.json
    def new
        @call_owner = SalesExecutive.where(:company_id => current_user.company_id)
        @call_log = CallLog.new

        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @call_log }
        end
    end

    # GET /call_logs/1/edit
    def edit
        @call_owner = SalesExecutive.where(:company_id => current_user.company_id)
        @call_log = CallLog.find(params[:id])
    end

    # POST /call_logs
    # POST /call_logs.json
    def create
        puts "params===================> #{params}"
        #aparams = Hash.new
        #aparams = {:utf8 => params[:utf8], :authenticity_token => params[:authenticity_token], :commit => "Create Call log", :call_duration_minutes => params[:call_duration_minutes], :call_dration_seconds => params[:call_duration_seconds], :call_log => {:subject => params[:subject], :call_start_time => params[:call_start_time], :call_duration => 30, :call_purpose => params[:call_purpose]}}
        #params = aparams
        #puts "subject ====> #{params}"
        @call_owner = SalesExecutive.where(:company_id => current_user.company_id)
        @call_log = CallLog.new(params[:call_log])
        @call_log.call_duration = params[:call_duration_minutes].to_i * 60 + params[:call_duration_seconds].to_i

        respond_to do |format|
            if @call_log.save
                format.html { redirect_to @call_log, notice: 'Call log was successfully created.' }
                format.json { render json: @call_log, status: :created, location: @call_log }
            else
                format.html { render action: "new" }
                format.json { render json: @call_log.errors, status: :unprocessable_entity }
            end
        end
    end

    # PUT /call_logs/1
    # PUT /call_logs/1.json
    def update
        @call_owner = SalesExecutive.where(:company_id => current_user.company_id)
        @call_log = CallLog.find(params[:id])

        respond_to do |format|
            if @call_log.update_attributes(params[:call_log])
                format.html { redirect_to @call_log, notice: 'Call log was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render action: "edit" }
                format.json { render json: @call_log.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /call_logs/1
    # DELETE /call_logs/1.json
    def destroy
        @call_log = CallLog.find(params[:id])
        @call_log.destroy

        respond_to do |format|
            format.html { redirect_to call_logs_url }
            format.json { head :no_content }
        end
    end

    def create_log
        @call_log =CallLog.new(:call_result =>params[:call_result], :call_type => params[:call_type], :call_purpose => params[:call_purpose], :call_owner_id => params[:call_owner_id].to_i, :call_start_time => params[:call_start_time].to_date)#, :call_duration => :params[:call_duration].to_i)
        @call_log.save
    end
end
