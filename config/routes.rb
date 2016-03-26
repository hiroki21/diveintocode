Rails.application.routes.draw do
  root 'top#index'
  
  get 'company/show' => 'company#show'
end
