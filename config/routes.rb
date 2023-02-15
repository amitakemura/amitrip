Rails.application.routes.draw do
  devise_for :users, controllers: {   registrations: 'users/registrations',
                                    sessions: 'users/sessions' }
  resources :users, only: [:show] # ユーザーマイページへのルーティング
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post 'hawaiians/new'  => 'hawaiians#create'
  resources :hawaiians
  root 'hawaiians#index'
  

end


