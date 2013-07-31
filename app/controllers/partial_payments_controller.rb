class PartialPaymentsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all

    def index
        @partial_payments = PartialPayment.all

        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @partial_payments }
        end
    end

    def show
        @partial_payment = PartialPayment.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @partial_payment }
        end
    end

    def new
        @partial_payment = PartialPayment.new

        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @partial_payment }
        end
    end

    def edit
        @partial_payment = PartialPayment.find(params[:id])
    end

    def create
        @partial_payment = PartialPayment.new(params[:partial_payment])

        respond_to do |format|
            if @partial_payment.save
                format.html { redirect_to @partial_payment, notice: 'Partial payment was successfully created.' }
                format.json { render json: @partial_payment, status: :created, location: @partial_payment }
            else
                format.html { render action: "new" }
                format.json { render json: @partial_payment.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        @partial_payment = PartialPayment.find(params[:id])

        respond_to do |format|
            if @partial_payment.update_attributes(params[:partial_payment])
                format.html { redirect_to @partial_payment, notice: 'Partial payment was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render action: "edit" }
                format.json { render json: @partial_payment.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @partial_payment = PartialPayment.find(params[:id])
        @partial_payment.destroy

        respond_to do |format|
            format.html { redirect_to partial_payments_url }
            format.json { head :no_content }
        end
    end

    def create_partial_payment
        @partial_payment = PartialPayment.create(:amount_paid => params[:amount], :transaction_id => params[:transaction_id])

        respond_to do |format|
            format.html{render :nothing => true}
        end
    end
end
