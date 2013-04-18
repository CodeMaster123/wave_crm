class Contact < ActiveRecord::Base
  attr_accessible :address, :first_name, :landline_no, :last_name, :latitude, :lead_id, :longitude, :middle_name, :mobile_no, :contact_type, :contactable_type, :contactable_id

  belongs_to :lead
  belongs_to :contactable, :polymorphic => true
  has_many :notifications

  has_many :taggings
  has_many :tags, through: :taggings

  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :middle_name, :presence => true
  validates :address, :presence => true
  validates :mobile_no, :presence => true, :numericality => true
  validates :landline_no, :presence => true, :numericality => true

  before_save :set_defaults

  def full_name
      "#{self.first_name.capitalize} #{self.middle_name.capitalize} #{self.last_name.capitalize}"
  end

  def first_last_name
      "#{self.first_name.capitalize} #{self.last_name.capitalize}"
  end

  private
  def set_defaults
    self.contact_type = "Lead" unless self.contact_type
  end



end
