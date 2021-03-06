Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :members, only: [:index, :create] do 
        resources :personas, only: [:index, :create] do
          resources :guns, only: [:index, :create]
          resources :addresses, only: [:index, :create]
        end
      end
      resources :personas, only: [:index, :create]
      resources :guns, only: [:index, :create]
      resources :addresses, only: [:index, :create]
    end
  end


end
