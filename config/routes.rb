Eaterz::Application.routes.draw do
  root "static_pages#home"
  resources :restaurants
end
