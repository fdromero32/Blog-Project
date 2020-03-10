Rails.application.routes.draw do
  get '/blog' => 'main#index'
  #changed 'blog' => 'main#create' to 'blog/new => 'main#create' and then it worked?
  post 'blog/new' => 'main#create'
  get 'blog/new' => 'main#new', as: 'new_post'
  get '/blog/:id' => 'main#show', as: 'single_post'
 # the get route called 'new' will allow our user to create a new entry
  # the post route that will 'create' a new item in the database
  
  
  root to: 'main#index'
end
