Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles do
  	resources :comments
  end

  namespace :users do
  	namespace :api do
  		resources :articles do
  			collection do
  				get :method_name
  			end
  		end
  	end
  end
  root 'welcome#index'
end
