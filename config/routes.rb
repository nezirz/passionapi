Rails.application.routes.draw do
  #use_doorkeeper
  use_doorkeeper do
    skip_controllers :authorizations, :applications,
                     :authorized_applications
  end
  #devise_for :users

  namespace :api do
    namespace :v1 do
      resources :courses
      resources :categories
      resources :verticals
      #root to: 'verticals#index'
    end
    namespace :v2 do
      resources :courses
      resources :categories
      resources :verticals
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
