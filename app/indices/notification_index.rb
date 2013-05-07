ThinkingSphinx::Index.define :notification, :with => :active_record do
  indexes body 
  indexes contact.first_name
  indexes contact.last_name

  has company_id
  has contact_id

  set_property :min_infix_len => 1
end
