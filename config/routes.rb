Rails.application.routes.draw do
  
  root to: "speaks#index"
  resources :speaks do
    collection do
      post :confirm
    end
  end  
end
