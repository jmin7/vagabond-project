Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'cities#index'

post '/cities/:id/posts/:post_id/comments/new', to: 'comments#create', as: 'new_comment'
  resources :cities do
    resources :posts do
      resources :comments
    end
  end
end
