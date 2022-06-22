Rails.application.routes.draw do
  get 'lists/new'
  get 'lists' => 'lists#index'
  post 'lists' => 'lists#create'
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'lists/:id/edit' => 'lists#edit',as: 'edit_list'
  get '/top' => 'homes#top'
  patch 'lists/:id' => 'lists#update',as: 'update_list'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
