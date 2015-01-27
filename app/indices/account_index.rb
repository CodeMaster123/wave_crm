ThinkingSphinx::Index.define :account, with: :active_record do
  indexes account_name, website, billing_address, shipping_address

  set_property :min_infix_len => 1
end
