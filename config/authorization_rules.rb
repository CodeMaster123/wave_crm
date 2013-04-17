authorization do
  role :admin do
    has_permission_on :leads, :to => [:index, :create, :read, :update, :destroy, :new, :show, :search, :edit]
    has_permission_on :products, :to => [:index, :create, :read, :update, :destroy, :new, :show, :search, :edit]
    has_permission_on :users, :to => [:index, :create, :read, :update, :destroy, :new, :show, :edit]
    has_permission_on :tags, :to => [:index, :create, :read, :update, :destroy, :new, :show, :edit]
    has_permission_on :sales_executives, :to => [:index, :create, :read, :update, :destroy, :new, :show, :edit]
    has_permission_on :team_leaders, :to => [:index, :create, :read, :update, :destroy, :new, :show, :edit]
    has_permission_on :events, :to => [:index, :create, :read, :update, :destroy, :new, :show, :search, :edit]
    has_permission_on :notifications, :to => [:index, :create, :read, :update, :destroy, :new, :show, :search, :edit, :noticed]
    has_permission_on :targets, :to => [:index, :create, :read, :update, :destroy, :new, :show, :search, :edit]
    has_permission_on :contacts, :to => [:index, :create, :read, :update, :destroy, :new, :show, :search, :edit]
    has_permission_on :calendar, :to => [:index]
    #has_permission_on :employees, :to => [:index, :create, :read, :update, :destroy, :new, :show]
  end

  role :team_leader do
    has_permission_on :leads, :to => [:index, :create, :read, :update, :destroy, :new, :show]
    has_permission_on :sales_executives, :to => [:index, :create, :read, :update, :destroy, :new, :show]
  end

  role :sales_executive do
    has_permission_on :leads, :to => [:create, :read, :update, :destroy, :new, :show]
  end
end
