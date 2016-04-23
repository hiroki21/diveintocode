Rails.application.routes.draw do
  get 'users/index'

  get 'users/show'

  devise_for :users
  resources :users, only: [:index, :show]
  root 'top#index'
  
  get 'company/show' => 'company#show'
  
  get 'inquiry' => 'inquiry#index'
  post 'inquiry' => 'inquiry#index2'
  post 'inquiry/confirm' => 'inquiry#confirm'
  post 'inquiry/thanks' => 'inquiry#thanks'
  
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
