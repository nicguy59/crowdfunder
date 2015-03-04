Rails.application.routes.draw do
 resources :projects, only: [:index, :show] do
  resources :items
 end

 root 'projects#index'
 
end
