Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: "users/sessions" }

  resources :post
  resources :gallery
  resources :issue
  resources :group
  resources :artist
  resources :blog
  resources :preview


  devise_scope :user do
    # 로그인 경로 지정
    get "/login" => "users/sessions#new"

    # 로그아웃 경로 지정
    delete "/logout" => "devise/sessions#destroy"

    # 회원가입 경로 지정
    get "/register", to: "users/registrations#new"

    # 로그인 상태 Root Path
    authenticated :user do
      root :to => 'gallery#index', as: :authenticated_root
    end

    # 로그아웃 상태  Root Path
    unauthenticated :user do
      root :to => "users/sessions#new", as: :unauthenticated_root
    end
  end
end
