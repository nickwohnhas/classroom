Rails.application.routes.draw do

  resource :profiles, only: [:show] do
    resources :courses, only: [:new, :create, :index]
  end

  resources :teacher_login, only: [:new, :create]
  resources :student_login, only: [:new, :create]
  resources :session, only: [:new, :create, :destroy]
  resources :enrollment, only: [:new, :create]
  resources :grades, only: [:new,:create,:index, :show]
  root 'static_pages#home'
end
