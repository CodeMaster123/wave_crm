class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :password_confirmation, :remember_me, :account_type, :address, :first_name, :last_name, :mobile_no, :avatar, :team_leader_id
end
