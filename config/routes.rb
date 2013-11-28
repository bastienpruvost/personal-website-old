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

  get '/projects/alten_atexis',       :to => "projects#alten_atexis"
  get '/projects/test_connaissances', :to => "projects#test_connaissances"
  get '/projects/rao',                :to => "projects#rao"

  get '/projects/bda_site',           :to => "projects#bda_site"
  get '/projects/bda_projets',        :to => "projects#bda_projets"

  get '/projects/tnd_wordpress',      :to => "projects#tnd_wordpress"
  get '/projects/tnd_bpack',          :to => "projects#tnd_bpack"
  get '/projects/tnd_francoisandco',  :to => "projects#tnd_francoisandco"
  
  get '/projects/actemium_dalkia',    :to => "projects#actemium_dalkia"
  get '/projects/pinf',               :to => "projects#pinf"

end
