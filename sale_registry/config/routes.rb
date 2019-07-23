Rails.application.routes.draw do
  resources :sales
  get 'sales/new'
  post 'sales/create'
  get 'sales/done'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
