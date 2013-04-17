WaveCrm::Application.routes.draw do
  resources :transaction_field_values


  resources :transaction_fields


  resources :transactions


  resources :taggings


  resources :tags


  resources :products


  resources :leads_products


  resources :notifications


mount_sextant if Rails.env.development?

  resources :targets


  devise_for :users

  resources :follow_ups
  resources :employees
  resources :team_leaders
  resources :sales_executives
  resources :leads
  resources :contacts
  resources :users
  resources :events

  match 'calendar' => "calendar#index"
  match 'sales_executive_leads/:id1' => 'sales_executives#index'
  match 'follow_ups/new/:id1' => 'follow_ups#new'
  match 'follow_ups_list/:id' => 'follow_ups#follow_ups_list'
  match 'target_forecast' => 'team_leaders#target_forecast'
  match 'leads/index/:team_leader' => 'leads#index'

  match 'contact_search' => 'contacts#search'
  match 'lead_search' => 'leads#search'

  root :to => 'leads#index'
end
