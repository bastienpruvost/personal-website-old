Bastienpruvost::Application.routes.draw do
  root 'pages#index'

  get "/cv", :to => "pages#cv"
  get "/projets", :to => "pages#projets"
  get "/blog", :to => "pages#blog"
  get "/contact", :to => "pages#contact"

end
