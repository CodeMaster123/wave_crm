WaveCrm::Application.routes.draw do
  devise_for :users

  resources :follow_ups
  resources :employees
  resources :team_leaders
  resources :sales_executives
  resources :leads
  resources :contacts
  resources :users
  resources :events

  get "calendar/index"
  match 'follow_ups/new/:id1' => 'follow_ups#new'
  match 'target_forecast' => 'team_leaders#target_forecast'

  root :to => 'leads#index'
end
