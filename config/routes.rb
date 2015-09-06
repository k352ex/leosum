Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: "users/sessions" }

  resources :post
  resources :gallery

  devise_scope :user do
    get "/login" => "users/sessions#new"
    delete "/logout" => "devise/sessions#destroy"

    authenticated :user do
      root :to => 'gallery#index', as: :authenticated_root
    end

    unauthenticated :user do
      root :to => "users/sessions#new", as: :unauthenticated_root
    end
  end
end
