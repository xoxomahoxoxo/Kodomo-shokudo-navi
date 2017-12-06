  Rails.application.routes.draw do
    devise_for :users
    root "reviews#top"
    # get 'reviews' => 'reviews#index'
    # get 'reviews/new' =>'reviews#new'
    # post 'reviews'      =>  'reviews#create'
    # delete  'reviews/:id'  => 'reviews#destroy'
    # patch   'reviews/:id'  => 'reviews#update'
    # get   'reviews/:id/edit'  => 'reviews#edit'
    # get  'users/:id'   =>  'users#show'   #Mypageへのルーティング
    # get 'reviews/:id' => 'reviews#show'
    # get 'users/new' => 'users/new'

    # resources :reviews
    resources :shops do
      resources :reviews
      resources :likes, only: [:create, :destroy]
    end

    resources :users, only: [:new, :show]

  end
