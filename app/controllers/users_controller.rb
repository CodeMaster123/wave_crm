class UsersController < BaseController
  before_filter :fetch_company

    def index
        unless current_user.account_type == 4
            @users = @company.users
        else
            @users = User.all
        end

        respond_to do |format|
            format.html
        end
    end

    def show
        @user = User.find(params[:id])

        respond_to do |format|
            format.html
        end
    end

    def new
        @companies = Company.all
        @user = User.new
        @team_leaders = @company.users.where(account_type: 2)

        respond_to do |format|
            format.html
        end
    end

    def edit
        @companies = Company.all
        @user = User.find(params[:id])
        @team_leaders = @company.users.where(account_type: 2)
    end

    def create
        @companies = Company.all
        @user = User.new(params[:user])
        @team_leaders = @company.users.where(account_type: 2)
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
        @team_leaders = @company.users.where(account_type: 2)

        if @user.update_attributes(params[:user])
            redirect_to users_path, notice: 'User was successfully updated.'
        else
            render "edit"
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
