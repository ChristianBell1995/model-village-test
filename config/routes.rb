Rails.application.routes.draw do
  resources :starred_influencers, only: [:index, :destroy]
  resources :influencers, only: [:index, :new, :create, :show] do
    resources :starred_influencers, only: [:new, :create]
  end
  root to: 'starred_influencers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
