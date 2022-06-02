Rails.application.routes.draw do
  devise_for :users
  draw(:api)
end
