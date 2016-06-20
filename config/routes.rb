Rails.application.routes.draw do
  get 'inbox/index'

  get 'about/company_overview'

  get 'users/index'
  get 'users/show'

  devise_for :users, controllers: { 
    sessions: "users/sessions", 
    registrations: "users/registrations", 
    passwords: "users/passwords",
    omniauth_callbacks: "users/omniauth_callbacks" 
    }
  resources :users, only: [:index, :show]
  
  root 'top#index'
  
  resources :blogs

 get 'company/show' => 'company#show'
  
  get 'inquiry' => 'inquiry#index'
  post 'inquiry' => 'inquiry#index2'
  post 'inquiry/confirm' => 'inquiry#confirm'
  post 'inquiry/thanks' => 'inquiry#thanks'
  
  get 'about' => 'about#company_overview'
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
