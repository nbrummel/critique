Rails.application.routes.draw do
<<<<<<< HEAD
  resources :projects
=======
<<<<<<< HEAD:config/routes.rb
  get 'users/index'

  get 'users/create'

  get 'users/update'

  get 'users/destroy'

  get 'users/search'

  get 'users/dashboard'

  get 'users/sign_out' => 'users#index'

  devise_for :users 
=======
  root 'static_pages#home'

  get 'static_pages/help'

  get 'static_pages/faq'

  get 'static_pages/t_and_c'

  resources :projects
  resources :reviews
>>>>>>> EdmundLeex-master

  devise_for :users
>>>>>>> 4aa119c61a67c72e9011982abcfe4c0626cf5bde:config/routes.rb
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
<<<<<<< HEAD:config/routes.rb
  root to: 'users#index'
=======
>>>>>>> 4aa119c61a67c72e9011982abcfe4c0626cf5bde:config/routes.rb
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
