Rails.application.routes.draw do

  resources :wallpapers

  # get 'about', to: 'page#about'
  # get 'page/home'

  %w[about home].each do |page|
    get page, controller: "page", action: page
  end

  devise_for :users, :skip => [:registrations] 
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'

    get 'sign_in', to: 'devise/sessions#new'
  end

  resources :videos
  resources :galleries
  resources :links

  resources :pins do
  	member do
  		put "like",    to: "pins#upvote"
  	end

    get 'murals', :on => :collection
    get 'illustrations', :on => :collection
    get 'publications', :on => :collection

  end

  match "/murals", to: "pins#murals", via: :get, as: :pins_murals
  match "/illustrations", to: "pins#illustrations", via: :get, as: :pins_illustrations
  match "/publications", to: "pins#publications", via: :get, as: :pins_publications
  match "/press", to: "links#index", via: :get, as: :links_press

  root "page#home"
end
