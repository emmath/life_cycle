LifeCycle::Application.routes.draw do

  root to: "fellows#index"

  resources :fellows
end

