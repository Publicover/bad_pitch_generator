Rails.application.routes.draw do
  get 'dashboards/index'
  root 'dashboards#index'

  post 'dashboards/mailchimp_signup'
end
