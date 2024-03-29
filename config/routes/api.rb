Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :products, only: [:index, :show]
      resources :relax_sounds, only: [:index, :show]
    end
  end
end
