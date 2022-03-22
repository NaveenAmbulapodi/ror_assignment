Rails.application.routes.draw do
  resources :employee_roles
  resources :roles
  resources :projects
  
  resources :blogs
  

  resources :employee_ratings


  root to: "projects#index"
  #devise_for :users
  devise_for :users, controllers: {registrations: 'users/registrations'}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
