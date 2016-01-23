Rails.application.routes.draw do
  get 'sensei/index'
  post 'sensei/analyze'

  root 'sensei#index'
end
