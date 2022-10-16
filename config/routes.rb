Rails.application.routes.draw do
  devise_for :users

  get 'dashboards/index'
  root 'dashboards#index'
  post 'dashboards/mailchimp_signup'

  namespace :admin do
    resources :users, except: [:new, :create, :show]
    resources :companies, except: [:show]
    resources :nouns, except: [:show]
    resources :organizations, except: [:show]
  end
end
