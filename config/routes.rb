Rails.application.routes.draw do

  resources :clients, except: :index do
    resources :sales, except: :destroy
  end

end
