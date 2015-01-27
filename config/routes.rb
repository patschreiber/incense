Incense::Application.routes.draw do
  devise_for :users, :controllers => { :registrations => "devise/registrations" }

  devise_scope :user do
    match '/signup' => 'devise/registrations#new', via: 'get', :as => :signup
    match '/sign-up' => 'devise/registrations#new', via: 'get'
    match '/sign_up' => 'devise/registrations#new', via: 'get'

    match '/signin' => 'devise/sessions#new', via: 'get', :as => :signin
    match '/sign-in' => 'devise/sessions#new', via: 'get'
    match '/sign_in' => 'devise/sessions#new', via: 'get'

    match '/logout' => 'devise/sessions#destroy', via: 'delete', :as => :logout

    match '/account' => 'devise/registrations#edit', via: 'get', :as => :account
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  root 'landing_page#index'

  match '/add-item' => 'inventory#add', via: 'post', :as => :add_item
  match '/delete-item' => 'inventory#delete', via: 'post', :as => :delete_item
  match '/update-item' => 'inventory#update', via: 'post', :as => :update_item

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
