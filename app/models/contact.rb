class Contact < ActiveRecord::Base

  attr_accessible :address, :first_name, :landline_no, :last_name, :latitude, :lead_id, :longitude, :middle_name, :mobile_no, :contact_type, :contactable_type, :contactable_id, :company_id, :gmaps

  belongs_to :lead
  belongs_to :contactable, :polymorphic => true
  has_many :notifications

  has_many :taggings
  has_many :tags, through: :taggings

  belongs_to :company

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :middle_name, :presence => true
  validates :address, :presence => true
  validates :mobile_no, :presence => true, :numericality => true
  validates :landline_no, :presence => true, :numericality => true
  validates :company_id, :presence => true

  before_save :set_defaults

  geocoded_by :geocoding_address
  after_validation :geocode, :if => :address_changed?

  def geocoding_address
    self.address
  end

  acts_as_gmappable :latitude => 'latitude', :longitude => 'longitude', :process_geocoding => :false,
                    :address => "address", :normalized_address => "address"

  def gmaps4rails_address
    self.address
  end

  def gmaps4rails_infowindow
    "<h1>#{self.first_name}</h1>"
  end

  def full_name
      "#{self.first_name.capitalize} #{self.middle_name.capitalize} #{self.last_name.capitalize}"
  end

  def first_last_name
      "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end

  private
  def set_defaults
      #self.contact_type = "Lead" unless self.contact_type
  end



end
