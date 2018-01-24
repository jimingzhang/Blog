Rails.application.routes.draw do
  root 'blog_index#show'
  namespace :author do
    resources :posts
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
