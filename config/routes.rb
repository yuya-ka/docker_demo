Rails.application.routes.draw do

  resources :products, only: [:index, :show, :edit, :create, :update, :destroy]
end
