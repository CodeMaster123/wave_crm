ThinkingSphinx::Index.define :transaction, :with => :active_record do
  indexes contacts.first_name
  indexes contacts.last_name
  indexes transaction_field_values.transaction_field_value

  has company_id

  set_property :min_infix_len => 1
end
