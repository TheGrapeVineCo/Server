Rails.application.routes.draw do
  devise_for :users,
  defaults: { format: :json },
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }
  namespace :api do
    namespace :v1 do
      resources :comments
    end
  end
  resources :wine_listings

  scope '/api' do
    get '/wine_listings', to: 'wine_listings#index'
    post '/wine_listings', to: 'wine_listings#create'
    get '/wine_listings/:id', to: 'wine_listings#show'
    put '/wine_listings/:id', to: 'wine_listings#update'
    delete '/wine_listings/:id', to: 'wine_listings#destroy'
    scope '/auth' do
      post '/sign_up', to: 'users#create'
      # post '/sign_in', to: 'users#sign_in'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
