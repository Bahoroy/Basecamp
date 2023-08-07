Rails.application.routes.draw do
  root "projects#index"
  devise_for :users
  resources :projects do
    resources :andrs, path: 'message-boards', controller: 'andrs'
    resources :cets, path: 'attachments', controller: 'cets'
    resources :todos
  end
  resources :todos
  resources :cets
  resources :anders
  resources :andrs
end
