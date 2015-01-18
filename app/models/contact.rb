class Contact < ActiveRecord::Base

  attr_accessible :address, :first_name, :landline_no, :last_name, :latitude, :lead_id, :longitude, :middle_name, :mobile_no, :contact_type, :contactable_type, :contactable_id, :company_id, :email_id, :contact_relationship, :account_id

  belongs_to :lead
  belongs_to :contactable, :polymorphic => true
  belongs_to :account
  has_many :notifications, :dependent => :destroy

  has_many :call_logs, :dependent => :destroy

  belongs_to :company

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :address, :presence => true
  validates :mobile_no, :presence => true, :numericality => true
  validates :landline_no, :presence => true, :numericality => true
  validates :company_id, :presence => true
  #validates :contact_relationship, :presence => true

  before_save :set_defaults

  geocoded_by :geocoding_address
  #after_save :delayed_geocoding

 # def delayed_geocoding
 #     Resque.enqueue(GeocodeContact, self.id)
 # end

  def geocoding_address
    self.address
  end

  def full_name
      "#{self.first_name.capitalize} #{self.middle_name.capitalize} #{self.last_name.capitalize}"
  end

  def first_last_name
      "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end

  #def self.clients
  #    Contact.where(:contact_relationship => "client")
  #end

  #def self.potential_customer
  #    Contact.where(:contact_relationship => "potential_customer")
  #end

  private
  def set_defaults
      #self.contact_type = "Lead" unless self.contact_type
  end



end
