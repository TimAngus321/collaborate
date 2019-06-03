Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'
  get '/wikihow', to: 'pages#wikihow'
  get '/my_final_tracks', to: 'users#my_final_tracks'


  resources :users, only: [:edit, :update, :show, :index]

  resources :tracks, only: [:new, :create] do
    resources :requests, only: [:new, :create]
  end
  get :my_requests, to: "requests#my_requests"
  get :my_submissions, to: "submissions#my_submissions"
  resources :requests, only: [:show, :index, :edit, :update, :destroy] do
    resources :submissions, only: [:new, :create]
  end
  resources :submissions, only: [:show, :index, :edit, :update, :destroy]
end
