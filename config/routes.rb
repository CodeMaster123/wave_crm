WaveCrm::Application.routes.draw do
    devise_for :users

    resources :activities
    resources :accounts do
      resources :transactions do
        match 'invoice' => 'transactions#invoice' #, :defaults => {:format => 'pdf'}
      end
      resources :contacts
      match 'contact_search' => 'contacts#search'
      match 'contacts/index/:type' => 'contacts#index'
    end
    resources :call_logs
    resources :inventory_additions
    resources :inventories
    resources :companies
    resources :special_occasions
    resources :transaction_field_values
    resources :transaction_fields
    resources :taggings
    resources :tags
    resources :products
    resources :leads_products
    resources :notifications
    resources :targets
    resources :employees
    resources :team_leaders
    resources :sales_executives
    resources :leads
    resources :users
    resources :crm_customers
    resources :events
    resources :partial_payments

    #Sinatra apps
    mount_sextant if Rails.env.development?
    mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

    #Search functionality
    match 'lead_search' => 'leads#search'
    match 'tag_search' => 'tags#search'
    match 'notification_search' => 'notifications#search'
    match 'event_search' => 'events#search'

    #Reporting and intelligence
    match 'transaction_graph' => 'transactions#graph'
    match 'map_index' => 'contacts#map_index'
    match 'target_forecast' => 'team_leaders#target_forecast'
    match 'targets/index/:type' => 'targets#index'
    match 'old_target' => 'targets#old_target'

    #Notifications and events
    match 'calendar' => "calendar#index"
    match 'notifications_to_all' => 'notifications#notifications_to_all'

    #Used in transactions controller
    match 'transactions/new/:id1/:matured_by/:executive_type' => 'transactions#new'
    match 'transactions/mature/:id1/:matured_by/:executive_type' => 'transactions#new'
    match 'get_partial_payments/:transaction_id' => 'transactions#get_partial_payments'
    match 'create_partial_payment' => 'partial_payments#create_partial_payment'

    #Tuple classification in index method
    match 'accounts/index/:type' => 'accounts#index'
    match 'leads/index/:type' => 'leads#index', :as => :lead_change
    match 'leads/index/:team_leader' => 'leads#index'
    match 'leads/index/:type/:sales_executive' => 'leads#index'
    match 'notifications/index/:type' => 'notifications#index', :as => :n_change
    match 'sales_executive_leads/:id1' => 'sales_executives#index'

    #Used in Leads controller
    match 'postpone_lead' => 'leads#postpone_lead'

    #Used in Leads#show
    match 'create_call_logs' => 'call_logs#create_log'
    match 'create_events' => 'events#create_event'
    match 'create_notification' => 'notifications#create_notification'
    match 'create_contact' => 'contacts#create_contact'
    match 'create_transaction' => 'transactions#create_transaction'
    match 'change_owner' => 'leads#change_owner'

    root :to => 'leads#index'
end
