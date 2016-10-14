Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "shippers#index"
  get 'search', to: 'shippers#search'
  get 'users', to: 'send_messages#index'
  put 'msgs', to: 'send_messages#msgs'
end
