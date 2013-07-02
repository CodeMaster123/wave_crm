class PartialPayment < ActiveRecord::Base
    has_one :transaction
    attr_accessible :amount_paid, :transaction_id

    private
    validate:check_if_exceeds

    def check_if_exceeds
        total_payment = 0
        PartialPayment.where(:transaction_id => self.transaction_id).each do |partial|
            total_payment += partial.amount_paid
        end
        total_payment += self.amount_paid
        total_amount = Transaction.find(self.transaction_id).amount

        if total_amount < total_payment
            errors.add(:payment_already_made, "Payment already made")
            puts 'true'
        end
    end
end
