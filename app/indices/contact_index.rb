# app/indices/article_index.rb
ThinkingSphinx::Index.define :contact, :with => :active_record do
  indexes first_name, last_name
  has :company_id

  set_property :min_infix_len => 1
  #set_property :min_prefix_len => 1
end
