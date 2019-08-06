Rails.application.routes.draw do
  root to: 'malls#index'
  resources :malls 
end
