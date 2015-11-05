Rails.application.routes.draw do

  devise_for :users
	root 'groups#index'
	
	resources :groups do
		member do
			post :join
			post :quit
		end
		resources :posts, except: [:show, :index]
	end

	namespace :account do
		resources :groups, only: [:index]
		resources :posts, only: [:index]
	end
	
end
