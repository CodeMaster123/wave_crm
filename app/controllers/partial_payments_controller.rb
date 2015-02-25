class PartialPaymentsController < ApplicationController
    before_filter :fetch_company
    filter_access_to :all
    respond_to :html, :json

    def create
        @partial_payment = PartialPayment.new(params[:partial_payment])

        @partial_payment.save
        respond_with @partial_payment
    end

end
