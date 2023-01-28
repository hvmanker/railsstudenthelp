Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  get 'home/index'
  get '/dashboard', to: 'home#dashboard'
  get 'home/jobs'
  get 'home/output'
  get '/mentalhealth', to: 'home#mentalhealth'
  get 'home/upskill',to: 'home#upskill'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"
  
end
