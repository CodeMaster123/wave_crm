class PartialPayment < ActiveRecord::Base
    belongs_to :crm_transaction
    attr_accessible :amount_paid, :crm_transaction_id

    before_validation :check_if_exceeds

    validates :amount_paid, :presence => true, :numericality => true

    def check_if_exceeds
        total_payment = 0
        CrmTransaction.find(self.crm_transaction_id).partial_payments.each do |partial|
            total_payment += partial.amount_paid
        end
        total_payment += self.amount_paid
        total_amount = CrmTransaction.find(self.crm_transaction_id).amount

        if total_amount < total_payment
            errors.add(:payment_already_made, "Payment already made")
            false
        end
    end
end
