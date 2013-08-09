class Event < ActiveRecord::Base
    include PublicActivity::Model
    tracked owner: ->(controller, model) {controller && controller.current_user}

    belongs_to :user
    belongs_to :company
    belongs_to :lead
    belongs_to :contact

    attr_accessible :title, :description, :starts_at, :recurring, :url, :user_id, :company_id, :lead_id, :contact_id

    validates :title, :presence => true
    validates :description, :presence => true
    validates :starts_at, :presence => true
    validates :company_id, :presence => true

    validate :date_validation

    def date_validation
      unless self.starts_at.nil?
        unless self.starts_at > Date.yesterday
          errors.add(:date_error, "Cannot use past date")
        end
      end
    end


    def as_json(options = {})
      {
        :id => self.id,
        :type => "event",
        :title => self.title,
        :description => self.description || "",
        :start => starts_at.rfc822,
        #:end => ends_at.rfc822,
        #:allDay => self.all_day,
        :recurring => false,
        :url => Rails.application.routes.url_helpers.event_path(id)
      }

    end

    def self.format_date(date_time)
      Time.at(date_time.to_i).to_formatted_s(:db)
    end
end
