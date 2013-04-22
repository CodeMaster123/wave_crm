class ContactsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    layout :choose_layout

    def choose_layout
        if action_name == 'search'
            false
        else
            'application'
        end
    end

    def index
        if current_user.account_type ==1
            ###################################
            ############ Rewrite ##############
            @contacts = Contact.paginate(:page => params[:page], :per_page => 15).all
            ###################################
        elsif current_user.account_type == 2
            @contacts = Array.new
            User.where(:id => current_user.id).first.team_leader.leads.each do |lead|
                @contacts += lead.contacts
                @contacts.paginate(:page => params[:page], :per_page => 15)
            end
        elsif current_user.account_type == 3
            @contacts = Array.new
            User.where(:id => current_user.id).first.sales_executive.leads.each do |lead|
                @contacts += lead.contacts
                @contacts.paginate(:page => params[:page], :per_page => 15)
            end
            @contacts.paginate(:page => params[:page], :per_page => 15)
        end

        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @contacts }
        end
    end

    def show
        @contact = Contact.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @contact }
        end
    end

    def new
        @contact = Contact.new

        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @contact }
        end
    end

    def edit
        @contact = Contact.find(params[:id])
    end

    def create
        @contact = Contact.new(params[:contact])

        respond_to do |format|
            if @contact.save
                format.html { redirect_to :contacts, notice: 'Contact was successfully created.' }
                format.json { render json: @contact, status: :created, location: @contact }
            else
                format.html { render action: "new" }
                format.json { render json: @contact.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        ###################################
        ############ Rewrite ##############
        @contact = Contact.find(params[:id])
        ###################################

        respond_to do |format|
            if @contact.update_attributes(params[:contact])
                format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render action: "edit" }
                format.json { render json: @contact.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @contact = Contact.find(params[:id])
        @contact.destroy

        respond_to do |format|
            format.html { redirect_to contacts_url }
            format.json { head :no_content }
        end
    end

    def search
        if current_user.account_type == 1
            @contacts = Contact.search("*#{params[:q]}*")
        end

        respond_to do |format|
            format.html
            format.json { head :no_content }
        end
    end
end
