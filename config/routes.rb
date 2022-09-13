Rails.application.routes.draw do
  devise_for :users

  get 'dashboards/index'
  root 'dashboards#index'
  post 'dashboards/mailchimp_signup'

  resources :users, except: [:new, :create]
end
