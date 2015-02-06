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
        get 'invoice' => 'transactions#invoice' #, :defaults => {:format => 'pdf'}
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
        get 'notifications_to_all'
        post 'notifications_to_all'
      end
    end

    mount_sextant if Rails.env.development?
    mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
    mount Resque::Server.new, at: "/resque"

    #Notifications and events
    get 'calendar' => "calendar#index"

    #Tuple classification in index method
    get 'accounts/index/:type' => 'accounts#index'
    get 'leads/index/:type' => 'leads#index', :as => :lead_change
    get 'leads/index/:team_leader' => 'leads#index'
    get 'leads/index/:type/:sales_executive' => 'leads#index'
    get 'notifications/index/:type' => 'notifications#index', :as => :n_change

    #Used in Leads controller
    post 'postpone_lead' => 'leads#postpone_lead'
    post 'change_owner' => 'leads#change_owner'

    root :to => 'leads#home'
end
