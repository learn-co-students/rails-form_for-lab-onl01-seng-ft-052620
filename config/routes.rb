Rails.application.routes.draw do
  resources :students, only: [:new, :create, :show, :update]
  resources :school_classes, only: [:new, :show, :create, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
