Rails.application.routes.draw do
  resources :flowers do
    resources :comments
  end
end
