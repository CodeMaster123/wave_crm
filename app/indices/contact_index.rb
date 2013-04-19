# app/indices/article_index.rb
ThinkingSphinx::Index.define :contact, :with => :active_record do
  indexes first_name, last_name

  set_property :min_infix_len => 3
end
