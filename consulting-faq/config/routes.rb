Rails.application.routes.draw do
  devise_for :consultants
  devise_for :companies, controllers: {omniauth_callbacks: 'omniauth'}
  resources :question_answers
  resources :answers
  resources :consultants
  resources :assignments
  resources :companies
  resources :questions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
