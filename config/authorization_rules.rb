authorization do
  role :admin do
    has_permission_on :leads, :to => [:index, :create, :read, :update, :destroy, :new, :show, :search, :edit]
    has_permission_on :products, :to => [:index, :create, :read, :update, :destroy, :new, :show, :search, :edit]
    has_permission_on :users, :to => [:index, :create, :read, :update, :destroy, :new, :show, :edit]
    has_permission_on :sales_executives, :to => [:index, :create, :read, :update, :destroy, :new, :show, :edit]
    has_permission_on :team_leaders, :to => [:index, :create, :read, :update, :destroy, :new, :show, :edit]
    #has_permission_on :employees, :to => [:index, :create, :read, :update, :destroy, :new, :show]

  end

  role :team_leader do
    has_permission_on :leads, :to => [:index, :create, :read, :update, :destroy, :new, :show]
    has_permission_on :sales_executives, :to => [:index, :create, :read, :update, :destroy, :new, :show]
  end

  role :sales_executive do
    has_permission_on :leads, :to => [:index, :create, :read, :update, :destroy, :new, :show]

  end
end
