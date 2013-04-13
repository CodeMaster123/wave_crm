class Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :contact

  attr_accessible :tag_id, :contact_id
end
