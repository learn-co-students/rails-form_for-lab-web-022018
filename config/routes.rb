Rails.application.routes.draw do
  resources :students, only: [:index, :new, :create, :edit, :show]
  resources :school_classes, only: [:index, :new, :create, :edit, :show]
  patch 'students/:id', to: 'students#update'
  patch 'school_classes/:id', to: 'school_classes#update'
end
