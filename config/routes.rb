Rails.application.routes.draw do
  resources :comments
  resources :wine_listings
  scope "/api" do
    get "/wine_listings", to: "wine_listings#index"
    post "/wine_listings", to: "wine_listings#create"
    get "/wine_listings/:id", to: "wine_listings#show"
    put "/wine_listings/:id", to: "wine_listings#update"
    delete "/wine_listings/:id", to: "wine_listings#destroy"
  end

  devise_for :users, controllers: {
                       sessions: "users/sessions",
                       registrations: "users/registrations",
                     }
  devise_scope :user do
    post "api/login", to: "users/sessions#create"
    delete "api/logout", to: "users/sessions#destroy"
    post "api/sign_up", to: "users/registrations#create"
    get "forgot_password", to: "users/passwords#new"
    get "reset_password", to: "users/passwords#edit"
  end
  get "/member-data", to: "members#show"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
