Rails.application.routes.draw do
  resources :pictures do
    resources :comments
  end
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :users, :only =>[:show] do
    resources :comments do
    end
  end
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
