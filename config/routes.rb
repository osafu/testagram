Rails.application.routes.draw do
  root 'top#index'

  resources :posts, only: [:index, :new, :create, :edit, :update, :destroy] do
    collection do
      post :confirm
    end
  end
end
