Runbookapp::Application.routes.draw do
  devise_for :users

  resources :applications do
    resources :pages
  end

  root to: "applications#index"
end
