WaveCrm::Application.routes.draw do
  devise_for :users

  resources :follow_ups
  resources :employees
  resources :team_leaders
  resources :sales_executives
  resources :leads
  resources :contacts
  resources :users

  match 'follow_ups/new/:id1' => 'follow_ups#new'

  root :to => 'leads#index'
end
