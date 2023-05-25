Rails.application.routes.draw do
  devise_for :users
  resources :books do
    resources :book_comments, only:[:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

  # ゲストログイン用
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end

  get "/book/hashtag/:name", to: "books#hashtag"

  resources :users do
    resource :relationships, only: [:create, :destroy]
    get "followings" => "relationships#followings", as: "followings"
    get "followers" => "relationships#followers", as: "followers"
  end

  root to: "homes#top"
  get "home/about" => "homes#about", as: "about"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
