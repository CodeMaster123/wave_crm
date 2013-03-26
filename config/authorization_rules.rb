authorization do
  role :admin do
    has_permission_on :leads, :to => [:index, :create, :read, :update, :delete]
    has_permission_on :users, :to => [:index, :create, :read, :update, :delete]
    has_permission_on :sales_executives, :to => [:index, :create, :read, :update, :delete]
    has_permission_on :team_leaders, :to => [:index, :create, :read, :update, :delete]
    has_permission_on :employees, :to => [:index, :create, :read, :update, :delete]

  end

  role :team_leader do
    has_permission_on :leads, :to => [:index, :create, :read, :update, :delete]
    has_permission_on :sales_executives, :to => [:index, :create, :read, :update, :delete]
  end

  role :sales_executive do
    has_permission_on :leads, :to => [:index, :create, :read, :update, :delete]

  end
end