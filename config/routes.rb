Rails.application.routes.draw do
  resources :students, :school_classes, only: [:new, :show, :edit, :create]
  patch '/students/:id', to: 'students#update'
  patch '/school_classes/:id', to: 'school_classes#update'  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
