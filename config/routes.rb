Rails.application.routes.draw do

  root 'cards#index'

  resources :lists
  resources :cards do 
    resources :lists
  end

  # resources :events do 
  #   resources :attends, only: [:index, :new, :create]
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
