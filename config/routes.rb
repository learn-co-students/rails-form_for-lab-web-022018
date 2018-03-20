Rails.application.routes.draw do
  resources :students, only: [:show, :new, :edit, :update, :edit, :create]
  resources :school_classes, only: [:show, :new, :edit, :update, :edit, :create]
end
