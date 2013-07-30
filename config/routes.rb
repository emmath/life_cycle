LifeCycle::Application.routes.draw do

  root to: "fellow_statuses#index"
    resources :fellow_statuses
    resources :fellows
    resources :statuses

end

