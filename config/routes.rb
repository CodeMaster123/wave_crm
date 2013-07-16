WaveCrm::Application.routes.draw do
    devise_for :users

    resources :accounts
    resources :call_logs
    resources :inventory_additions
    resources :inventories
    resources :companies
    resources :special_occasions
    resources :transaction_field_values
    resources :transaction_fields
    resources :transactions
    resources :taggings
    resources :tags
    resources :products
    resources :leads_products
    resources :notifications
    resources :notification_settings
    resources :targets
    resources :employees
    resources :team_leaders
    resources :sales_executives
    resources :leads
    resources :contacts
    resources :users
    resources :crm_customers
    resources :events
    resources :partial_payments

    mount_sextant if Rails.env.development?
    mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
    mount Resque::Server, :at => '/resque_panel'

    match 'contact_search' => 'contacts#search'
    match 'lead_search' => 'leads#search'
    match 'tag_search' => 'tags#search'
    match 'notification_search' => 'notifications#search'
    match 'event_search' => 'events#search'

    match 'transaction_graph' => 'transactions#graph'

    match 'calendar' => "calendar#index"
    match 'sales_executive_leads/:id1' => 'sales_executives#index'
    match 'target_forecast' => 'team_leaders#target_forecast'

    match 'noticed' => 'notifications#noticed'
    match 'notifications_to_all' => 'notifications#notifications_to_all'
    match 'map_index' => 'contacts#map_index'
    match 'transactions/new/:id1/:matured_by/:executive_type' => 'transactions#new'
    match 'transactions/mature/:id1/:matured_by/:executive_type' => 'transactions#new'
    match 'old_target' => 'targets#old_target'
    match 'transaction_invoice/:id' => 'transactions#invoice' #, :defaults => {:format => 'pdf'}

    match 'contacts/index/:type' => 'contacts#index'
    match 'accounts/index/:type' => 'accounts#index'

    match 'notifications/index/:type' => 'notifications#index', :as => :n_change

    match 'create_call_logs' => 'call_logs#create_log'
    match 'create_events' => 'events#create_event'
    match 'create_notification' => 'notifications#create_notification'
    match 'create_contact' => 'contacts#create_contact'
    match 'create_transaction' => 'transactions#create_transaction'
    match 'get_partial_payments/:transaction_id' => 'transactions#get_partial_payments'
    match 'create_partial_payment' => 'partial_payments#create_partial_payment'

    match 'leads/index/:type' => 'leads#index', :as => :lead_change
    match 'leads/index/:team_leader' => 'leads#index'
    match 'change_owner' => 'leads#change_owner'
    match 'postpone_lead' => 'leads#postpone_lead'

    match 'targets/index/:type' => 'targets#index'
    root :to => 'leads#index'
end
