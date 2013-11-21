Bastienpruvost::Application.routes.draw do
  root 'pages#index'

  get "/cv", :to => "pages#cv"
  get "/blog", :to => "pages#blog"
  get "/contact", :to => "pages#contact"
  get "/ig2i", :to => "pages#ig2i"
  get "/bda", :to => "pages#bda"

  resources :projects, only: [:index, :show]

end
