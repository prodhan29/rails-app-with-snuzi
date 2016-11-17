Rails.application.routes.draw do

  resources :regdetails
  resources :courses
  resources :semesters
  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }
  root "regdetails#index"

end
