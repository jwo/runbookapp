Runbookapp::Application.routes.draw do
  devise_for :users, :controllers => {
    registrations: "users/registrations", 
    passwords: "users/passwords"
  }

  resources :applications do
    resources :pages
  end

  root to: "applications#index"
  #root to: "page#home"
end
