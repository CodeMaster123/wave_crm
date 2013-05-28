class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @company = Company.where(:id => current_user.company_id).first
    @users = User.all
    @users = @company.users.paginate(:page => params[:page], :per_page => 15)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @company = Company.where(:id => current_user.company_id).first
    @user = User.new
    @all_team_leaders = @company.team_leaders.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @company = Company.where(:id => current_user.company_id).first
    @user = User.find(params[:id])
    @all_team_leaders = @company.team_leaders.all
  end

  # POST /users
  # POST /users.json
  def create
    @company = Company.where(:id => current_user.company_id).first
     @user = @company.users.new(:first_name => params[:user][:first_name], :last_name => params[:user][:last_name], :email => params[:user][:email], :password => params[:user][:password], :password_confirmation => params[:user][:password_confirmation], :account_type => params[:user][:account_type], :address => params[:user][:address], :mobile_no => params[:user][:mobile_no], :avatar => params[:user][:avatar])
    @all_team_leaders = @company.team_leaders.all
    @user.company_id = @company.id




    respond_to do |format|
        if @user.save
            if params[:user][:account_type].to_i == 2
                TeamLeader.create(:user_id => @user.id, :company_id => current_user.company.id)
                puts "---------------------------------------------#{User.last.id.to_i + 1}"
            elsif params[:user][:account_type].to_i == 3
                SalesExecutive.create(:user_id => User.last.id.to_i + 1, :team_leader_id => params[:user][:team_leader].to_i, :company_id => current_user.company.id)
                puts "---------------------------------------------#{User.last.id.to_i + 1}"
            end
            format.html { redirect_to :users, notice: 'User was successfully created.' }
            format.json { render json: @user, status: :created, location: @user }
        else
            format.html { render action: "new" }
            format.json { render json: @user.errors, status: :unprocessable_entity }
        end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
      @company = Company.where(:id => current_user.company_id).first
      @user = @company.users.find(params[:id])
      @all_team_leaders = @company.team_leaders.all

      respond_to do |format|
          if @user.update_attributes(:first_name => params[:user][:first_name], :last_name => params[:user][:last_name], :email => params[:user][:email], :password => params[:user][:password], :password_confirmation => params[:user][:password_confirmation], :account_type => params[:user][:account_type], :address => params[:user][:address], :mobile_no => params[:user][:mobile_no], :avatar => params[:user][:avatar])
              if params[:user][:account_type].to_i == 2
                  @user.team_leader.update_attributes(:user_id => @user.id)
              elsif params[:user][:account_type].to_i == 3
                  @user.sales_executive.update_attributes(:user_id => @user.id, :team_leader_id => params[:user][:team_leader].to_i)
              end
              format.html { redirect_to @user, notice: 'User was successfully updated.' }
              format.json { head :no_content }
          else
              format.html { render action: "edit" }
              format.json { render json: @user.errors, status: :unprocessable_entity }
          end
      end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
      @user = User.find(params[:id])
      @user.destroy

      respond_to do |format|
          format.html { redirect_to users_url }
          format.json { head :no_content }
      end
  end
end
