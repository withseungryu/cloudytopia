Rails.application.routes.draw do

root 'home#main'

  get 'home/index'
  
  get 'searches/index'

  get 'searches/show'

  resources :search
#   get 'search/index'

#   get 'search/search'

   #유저관련
   devise_for :users, :controllers => { omniauth_callbacks: 'users/omniauth_callbacks' }

  
  resources :boards
  # get 'boards/index'

  # get 'boards/new'

  # get 'boards/show'

  # get 'boards/edit'

  resources :mads
  get 'detail' => 'mads#detail'
  get 'main' => 'home#main'
  get 'map' => 'mads#map'
  get '/mads/index_part' => 'mads#index_part'

 
  # resources :sessions
  # resources :registrations
  # resources :passwords

  get 'ifm' => 'information#ifm'
  get 'pp' => 'information#pp'
  get 'show' => 'information#show'
  get 'po' => 'information#po'

end
