Rails.application.routes.draw do

  resources :clients, except: :index

end
