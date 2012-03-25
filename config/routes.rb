Publihot::Application.routes.draw do
  resources :adverts

  root :to => 'adverts#index'
end
