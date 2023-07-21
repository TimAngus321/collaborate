Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  get 'render/index'

  root to: 'pages#home'
  get '/wikihow', to: 'pages#wikihow'
  get '/my_final_tracks', to: 'users#my_final_tracks'


resources :channels, only: [ :show ]
get "channel/show", to: 'channels#show'



  resources :users, only: [:edit, :update, :show, :index]

  resources :tracks, only: [:new, :create] do
    resources :requests, only: [:new, :create]
  end
  get :my_requests, to: "requests#my_requests"
  get :my_submissions, to: "submissions#my_submissions"
  resources :requests, only: [:show, :index, :edit, :update, :destroy] do
    resources :submissions, only: [:new, :create, :update]
  end
  resources :submissions, only: [:show, :index, :edit, :update, :destroy]
  resources :request_timecodes, only: [ :update ]
  patch '/submissions/:id/accept', to: "submissions#accept", as: :accept_submission

  mount ActionCable.server => '/cable'
end
