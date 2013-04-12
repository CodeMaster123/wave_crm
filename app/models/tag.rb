class Tag < ActiveRecord::Base
  attr_accessible :name
  has_many :taggings
  has_many :contacts, through: :taggings

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
