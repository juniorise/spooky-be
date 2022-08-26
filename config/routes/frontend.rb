Rails.application.routes.draw do
  scope module: 'frontend' do
    resources :relax_sounds, controller: 'relax_sounds' do
    end
  end
end