Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  resources :list, only: [:new, :create, :edit, :update, :destroy] do
    resources :card do
      put :sort
    end
  end
  root 'top#index'
end
