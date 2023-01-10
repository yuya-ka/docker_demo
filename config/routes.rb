Rails.application.routes.draw do
  resources :products do
    resources :categories
  end
end
