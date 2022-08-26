Rails.application.routes.draw do
  namespace :admin do
    resources :relax_sound_categories
    resources :products
    resources :relax_sound_authors
    resources :relax_sound_translations
    resources :relax_sounds

    root to: "relax_sound_categories#index"
  end
  
  draw(:api)
end
