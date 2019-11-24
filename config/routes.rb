Rails.application.routes.draw do
  root 'topics#index'
  get 'topics/index'
  get 'topics/show/:id' => 'topics#show', as: :topics_show
  post 'topics/create' => 'topics#create'
  post 'posts/create' => 'post#create', as: :post_create
  post 'topics/update/:id' => 'topics#update'
  delete 'posts/delete/:id' => 'post#delete', as: :post_delete
  delete 'topics/delete/:id' => 'topics#delete', as: :topic_delete
end
