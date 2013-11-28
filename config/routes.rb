Bastienpruvost::Application.routes.draw do
  root 'pages#index'

  get "/cv", :to => "pages#cv"
  get "/blog", :to => "pages#blog"
  get "/ig2i", :to => "pages#ig2i"
  get "/bda", :to => "pages#bda"

  get  '/contact' => 'contact#new', :as => 'contact'
  post '/contact' => 'contact#create'

  get '/projects',                    :to => "projects#index"
  


  get '/projects/thredup-website',    :to => "projects#thredup-website"
  get '/projects/thredup-ios',        :to => "projects#thredup-ios"
  get '/projects/thredup-android',    :to => "projects#thredup-android"

  get '/projects/portfolio',          :to => "projects#portfolio"
  get '/projects/prp',                :to => "projects#prp"
  get '/projects/prt',                :to => "projects#prt"

  get '/projects/alten-atexis',       :to => "projects#alten-atexis"
  get '/projects/test-connaissances', :to => "projects#test-connaissances"
  get '/projects/rao',                :to => "projects#rao"

  get '/projects/bda-site',           :to => "projects#bda-site"
  get '/projects/bda-projets',        :to => "projects#bda-projets"

  get '/projects/tnd-wordpress',      :to => "projects#tnd-wordpress"
  get '/projects/tnd-bpack',          :to => "projects#tnd-bpack"
  get '/projects/tnd-francoisandco',  :to => "projects#tnd-francoisandco"
  
  get '/projects/actemium-dalkia',    :to => "projects#actemium_dalkia"
  get '/projects/pinf',               :to => "projects#pinf"

end
