class TargetSerializer < ActiveModel::Serializer
  attributes :id, :achived, :amount, :company_id, :target_month, :target_month_name, :target_year, :user_id, :user_name
  has_one :user

  def target_month_name
    Date::MONTHNAMES[self.target_month]
  end

  def user_name
    user = self.user
    return "#{user.first_name} #{user.last_name}"
  end
end
