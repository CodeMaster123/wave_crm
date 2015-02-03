class PartialPayment < ActiveRecord::Base
    has_one :transaction
    attr_accessible :amount_paid, :transaction_id

    before_validation :check_if_exceeds

    validates :amount_paid, :presence => true, :numericality => true

    def check_if_exceeds
        total_payment = 0
        Transaction.find(self.transaction_id).partial_payments.each do |partial|
            total_payment += partial.amount_paid
        end
        total_payment += self.amount_paid
        total_amount = Transaction.find(self.transaction_id).amount

        if total_amount < total_payment
            errors.add(:payment_already_made, "Payment already made")
            false
        end
    end
end
