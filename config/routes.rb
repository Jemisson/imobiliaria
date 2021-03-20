Rails.application.routes.draw do
  namespace :site do
    get 'homes/index'
  end

  root "site/homes#index"
end
