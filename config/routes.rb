Rails.application.routes.draw do
  resources :students, only: [:show, :new, :edit, :create, :update]
  resources :school_classes, only: [:show, :new, :edit, :create, :update]
end
