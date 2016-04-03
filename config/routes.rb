Rails.application.routes.draw do
  root 'top#index'
  
  get 'company/show' => 'company#show'
  
  get 'inquiry' => 'inquiry#index'
  post 'inquiry' => 'inquiry#index'
  post 'inquiry/confirm' => 'inquiry#confirm'
  post 'inquiry/thanks' => 'inquiry#thanks'
end
