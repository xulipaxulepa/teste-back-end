Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'home_controller#index', as: 'home'

get 'sobre' => 'sobre#about', as: 'sobre'

resources :cadastros

end
