Rails.application.routes.draw do
  devise_for :users

  get 'dashboards/index'
  root 'dashboards#index'
  post 'dashboards/mailchimp_signup'

  namespace :admin do
    resources :adjectives, except: [:show]
    resources :companies, except: [:show]
    resources :nouns, except: [:show]
    resources :organizations, except: [:show]
    resources :users, except: [:new, :create, :show]
    resources :verbs, except: [:show]
  end
end
