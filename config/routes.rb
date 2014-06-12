Rails.application.routes.draw do

  root 'welcome#index'

  resources :signs

end
