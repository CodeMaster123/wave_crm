class Event < ActiveRecord::Base
    belongs_to :user
    belongs_to :company
    belongs_to :contact

    attr_accessible :title, :description, :starts_at, :recurring, :url, :user_id, :company_id, :contact_id

    validates :title, :presence => true
    validates :description, :presence => true
    validates :starts_at, :presence => true
    validates :company_id, :presence => true

    validate :date_validation

    def date_validation
      unless self.starts_at > Date.yesterday
        errors.add(:date_error, "Cannot use past date")
      end
    end
end
