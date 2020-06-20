Rails.application.routes.draw do
  resources :team_assignments
  root "home#index"
  resources :people
  resources :seniorities
  resources :roles
  resources :teams
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
