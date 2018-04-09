Rails.application.routes.draw do


  root  'slugs#home'

   get 'slugs/home'

   get 'slugs/page'

  get 'slugs/about'

  get 'slugs/contact'

  get 'slugs/offers'

  get 'slugs/entertainment'

  get 'slugs/hardware'

  get 'slugs/beauty'

  get 'slugs/travel'

  get 'slugs/accomodation'

  get 'slugs/clothing'

  get 'slugs/restaurant'

  get 'slugs/electronics'

  get 'slugs/login'

  get 'slugs/register'

  get 'slugs/admin'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :contacts

  resources :slugs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
