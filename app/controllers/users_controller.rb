class UsersController < BaseController
  before_filter :fetch_company, except: [:show, :destroy]

    def index
        unless current_user.account_type == 4
            @users = @company.users
        else
            @users = User.all
        end

        respond_to do |format|
            format.html # index.html.erb
        end
    end

    def show
        @user = User.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
        end
    end

    def new
        @companies = Company.all
        @user = User.new
        @all_team_leaders = @company.team_leaders.all

        respond_to do |format|
            format.html # new.html.erb
        end
    end

    def edit
        @companies = Company.all
        @user = User.find(params[:id])
        @all_team_leaders = @company.team_leaders.all
    end

    def create
        @companies = Company.all
        @user = User.new(params[:user])
        @all_team_leaders = @company.team_leaders.all
        @user.company_id = @company.id if @user.company_id.nil?

        if @user.save
            redirect_to :users, notice: 'User was successfully created.'
        else
            render "new"
        end
    end

    def update
        @companies = Company.all
        @user = User.find(params[:id])
        @all_team_leaders = @company.team_leaders.all

        respond_to do |format|
            if @user.update_attributes(:first_name => params[:user][:first_name], :last_name => params[:user][:last_name], :email => params[:user][:email], :password => params[:user][:password], :password_confirmation => params[:user][:password_confirmation], :account_type => params[:user][:account_type], :address => params[:user][:address], :mobile_no => params[:user][:mobile_no], :avatar => params[:user][:avatar], :company_id => params[:user][:company_id])
                format.html { redirect_to @user, notice: 'User was successfully updated.' }
            else
                format.html { render "edit" }
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
