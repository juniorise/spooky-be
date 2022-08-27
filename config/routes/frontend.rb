Rails.application.routes.draw do
  scope module: 'frontend' do
    resources :relax_sound_images, controller: 'relax_sound_images'
  end
end
