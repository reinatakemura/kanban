Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  root 'top#index'
  resources :users, only: [:index, :show]
  resources :list, only: [:index, :new, :create, :edit, :update, :destroy] do
    resources :card do
      put :sort
    end
  end
end
