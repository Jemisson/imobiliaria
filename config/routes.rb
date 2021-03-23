Rails.application.routes.draw do
  devise_for :users

  namespace :site do
    get 'bookmarks/update'
    resources :bookmarks, only: [:index]
  end

  get 'inicio' => 'site/homes#index', as: 'home'
  get 'empreendimento' => 'site/homes#building', as: 'building'
  root "site/homes#index"
end
