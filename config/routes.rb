Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'


  resources :users, only: [:edit, :update, :show]
  resources :tracks, only: [:new, :create] do
    resources :requests, only: [:new, :create]
  end
  get :my_requests, to: "requests#my_requests"
  get :my_submissions, to: "submissions#my_submissions"
  resources :requests, only: [:show, :index, :edit, :update] do
    resources :submissions, only: [:create]
  end
  resources :submissions, only: [:show, :index, :edit, :update]
end
