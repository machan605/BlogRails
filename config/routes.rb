Rails.application.routes.draw do

  get "/pages/about"   => "pages#about", as: :about #la ultima parte es solo para hacer un link dinamico 
  get "/pages/contact" => "pages#contact", as: :contact
  
  #este metodo es el general y se hace manualmente creando uno a uno las rutas
  #get "/posts"     => "posts#index", as: :posts
  #post "/posts"    => "posts#create"
  #get "/post/:id"  => "posts#show", as: :post
  #patch "post/:id" => "posts#update"
  #delete "post/:id" => "posts#destroy"
  #get "/posts/new" => "posts#new", as: :new_post
  #get "/post/:id/edit" => "posts#edit", as: :edit_post


  #este metodo es el que se crea utilizando el resource y funciona como si estuviera usando todos los de arriba
root "posts#index"

  resources :posts do 
  	resources :comments  	
  end
 
  
end
