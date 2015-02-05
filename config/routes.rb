require 'resque/server'
WaveCrm::Application.routes.draw do
    devise_for :users

    resources :users

    resources :companies do
      resources :contacts do
        collection do
          get 'search'
        end
      end
    end

    resources :accounts do
      resources :transactions do
        match 'invoice' => 'transactions#invoice' #, :defaults => {:format => 'pdf'}
      end
      resources :contacts

      collection do
        get 'search'
      end
    end

    resources :partial_payments

    resources :products do
      resources :inventory_additions
    end

    resources :leads do
      collection do
        get 'search'
        get 'home'
      end
      resources :call_logs
    end


    resources :leads_products
    resources :targets
    resources :employees

    resources :events do
      collection do
        get 'search'
      end
    end

    resources :notifications do
      collection do
        get 'search'
        match 'notifications_to_all'
      end
    end

    mount_sextant if Rails.env.development?
    mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
    mount Resque::Server.new, at: "/resque"

    #Reporting and intelligence
    match 'transaction_graph' => 'transactions#graph'
    match 'target_forecast' => 'team_leaders#target_forecast'
    match 'targets/index/:type' => 'targets#index'

    #Notifications and events
    match 'calendar' => "calendar#index"

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

    #Used in Leads controller
    match 'postpone_lead' => 'leads#postpone_lead'

    #Used in Leads#show
    match 'create_events' => 'events#create_event'
    match 'change_owner' => 'leads#change_owner'

    root :to => 'leads#home'
end
