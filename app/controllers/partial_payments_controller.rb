class PartialPaymentsController < ApplicationController
    before_filter :authenticate_user!
    filter_access_to :all
    respond_to :html, :json

    def index
        @partial_payments = PartialPayment.all

        respond_with @partial_payments
    end

    def show
        @partial_payment = PartialPayment.find(params[:id])

        respond_with @partial_payment
    end

    def new
        @partial_payment = PartialPayment.new

        respond_with @partial_payment
    end

    def edit
        @partial_payment = PartialPayment.find(params[:id])
        respond_with @partial_payment
    end

    def create
        @partial_payment = PartialPayment.new(params[:partial_payment])

        @partial_payment.save
        respond_with @partial_payment
    end

    def update
        @partial_payment = PartialPayment.find(params[:id])

        @partial_payment.update_attributes(params[:partial_payment])
        respond_with @partial_payment
    end

    def destroy
        @partial_payment = PartialPayment.find(params[:id])
        @partial_payment.destroy

        respond_with @partial_payment
    end

    def create_partial_payment
        @partial_payment = PartialPayment.create(:amount_paid => params[:amount], :transaction_id => params[:transaction_id])

        respond_with @partial_payment
    end
end
