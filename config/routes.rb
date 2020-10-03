Rails.application.routes.draw do
  root 'tops#index'
  devise_for :users, controllers: {
  	  omniauth_callbacks: "users/omniauth_callbacks"
  }
  delete '/posts/destroy_all', to: 'posts#destroy_all', as: :posts_destroy
  
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
