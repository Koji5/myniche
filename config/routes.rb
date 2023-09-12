Rails.application.routes.draw do
  devise_for :users
  root to: "niches#index"
  resources :niches, path: '/', as: :niche do

  end
end
