Rails.application.routes.draw do
  root to: 'application#welcome'

  devise_for :companies, controllers: { sessions: "companies/sessions", registrations: "companies/registrations", omniauth_callbacks: 'omniauth' }
  devise_for :consultants, controllers: {sessions: "consultants/sessions", registrations: "consultants/registrations"}
  resources :question_answers
  resources :answers
  resources :assignments
  resources :questions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
