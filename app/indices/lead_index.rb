ThinkingSphinx::Index.define :lead, :with => :active_record do
  indexes title
  indexes description

  has :company_id
  has :leadable_id

  set_property :min_infix_len => 1
  #set_property :min_prefix_len => 1
end

