Rails.application.routes.draw do

  devise_for :users

  namespace :site do
    get 'homes/index'
    get 'bookmarks/update'
  end

  root "site/homes#index"
end
