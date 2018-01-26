Rails.application.routes.draw do
  devise_for :authors
  root 'blog_index#show'
  namespace :author do
    resources :posts
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
