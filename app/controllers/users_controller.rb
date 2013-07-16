class UsersController < ApplicationController
    def index
        unless current_user.account_type == 4
            @company = Company.where(:id => current_user.company_id).first
            @users = @company.users.paginate(:page => params[:page], :per_page => 15)
        else
            @users = User.all
        end

        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @users }
        end
    end

    def show
        @user = User.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @user }
        end
    end

    def new
        @company = Company.where(:id => current_user.company_id).first
        @companies = Company.all
        @user = User.new
        @all_team_leaders = @company.team_leaders.all

        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @user }
        end
    end

    def edit
        @company = Company.where(:id => current_user.company_id).first
        @companies = Company.all
        @user = User.find(params[:id])
        @all_team_leaders = @company.team_leaders.all
    end

    def create
        @company = Company.where(:id => current_user.company_id).first
        @companies = Company.all
        @user = User.new(:first_name => params[:user][:first_name], :last_name => params[:user][:last_name], :email => params[:user][:email], :password => params[:user][:password], :password_confirmation => params[:user][:password_confirmation], :account_type => params[:user][:account_type], :address => params[:user][:address], :mobile_no => params[:user][:mobile_no], :avatar => params[:user][:avatar], :company_id => params[:user][:company_id])
        @all_team_leaders = @company.team_leaders.all
        #@user.company_id = @company.id

        respond_to do |format|
            if @user.save
                if params[:user][:account_type].to_i == 2
                    TeamLeader.create(:user_id => @user.id, :company_id => current_user.company.id)
                elsif params[:user][:account_type].to_i == 3
                    SalesExecutive.create(:user_id => @user.id, :team_leader_id => params[:user][:team_leader].to_i, :company_id => current_user.company.id)
                end
                format.html { redirect_to :users, notice: 'User was successfully created.' }
                format.json { render json: @user, status: :created, location: @user }
            else
                format.html { render "new" }
                format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        @company = Company.where(:id => current_user.company_id).first
        @companies = Company.all
        @user = User.find(params[:id])
        @all_team_leaders = @company.team_leaders.all

        respond_to do |format|
            if @user.update_attributes(:first_name => params[:user][:first_name], :last_name => params[:user][:last_name], :email => params[:user][:email], :password => params[:user][:password], :password_confirmation => params[:user][:password_confirmation], :account_type => params[:user][:account_type], :address => params[:user][:address], :mobile_no => params[:user][:mobile_no], :avatar => params[:user][:avatar], :company_id => params[:user][:company_id])
                if params[:user][:account_type].to_i == 2
                    @user.team_leader.update_attributes(:user_id => @user.id)
                elsif params[:user][:account_type].to_i == 3
                    @user.sales_executive.update_attributes(:user_id => @user.id, :team_leader_id => params[:user][:team_leader].to_i)
                end
                format.html { redirect_to @user, notice: 'User was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render "edit" }
                format.json { render json: @user.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy

        respond_to do |format|
            format.html { redirect_to users_url }
            format.json { head :no_content }
        end
    end
end
