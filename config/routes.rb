Rails.application.routes.draw do
  root 'home#index'
  get 'articles', to: 'home#articles'
  get 'article', to: 'home#show'

  namespace :admin do
    resources :articles
    resources :article_categories
  end
  # mount Fae below your admin namespec
  mount Fae::Engine => '/admin'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
