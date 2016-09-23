Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
     authenticated :user do
       root 'links#index', as: :authenticated_root
     end

     unauthenticated do
       root 'devise/registrations#new', as: :unauthenticated_root
     end
   end

   get '/links' => 'links#index'
end
