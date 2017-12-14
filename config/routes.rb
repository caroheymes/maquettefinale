Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  match "/backend-search" => 'search#index', via: [:post, :get], as: :backend_search
  
  resources :posts
  root "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
