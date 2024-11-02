Rails.application.routes.draw do
  resources :lrt1, only: [:index] do
    collection do
      get :fare
    end
  end
  resources :lrt2, only: [:index] do
    collection do
      get :fare
    end
  end
  resources :mrt3, only: [:index] do
    collection do
      get :fare
    end
  end
end
