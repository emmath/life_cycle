LifeCycle::Application.routes.draw do

  root to: "fellowstatuses#index"
    resources :fellowstatuses
    resources :fellows
    resources :statuses

end

