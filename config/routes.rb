Bastienpruvost::Application.routes.draw do
  root 'pages#index'

  get "/cv", :to => "pages#cv"
  get "/blog", :to => "pages#blog"
  get "/ig2i", :to => "pages#ig2i"
  get "/bda", :to => "pages#bda"

  get  '/contact' => 'contact#new', :as => 'contact'
  post '/contact' => 'contact#create'

  resources :projects, only: [:index, :show]

end
