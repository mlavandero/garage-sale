Rails.application.routes.draw do

  resources :clients, except: [:index, :destroy] do
    resources :sales, except: :destroy do
      resources :items
    end
  end

end
