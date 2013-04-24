class Tag < ActiveRecord::Base
  attr_accessible :name, :company_id
  has_many :taggings
  has_many :contacts, through: :taggings
  belongs_to :company
  validates :company_id, :presence => true

  def tag_list_string
      @tag_array =Array.new
      @i = 0
      Tag.all.each do  |tag|
          @tag_array[@i] = tag.name
          @i = @i+1
      end
      @tag_string = @tag_array.join(',')
  end
end
