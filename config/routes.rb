Rails.application.routes.draw do

  root 'users#index'
  resources :users do
    resources :addresses
  end

#  get 'users/new' => 'users#new', as: :users_new
#  get 'users/:id/edit' => 'users#edit', as: :user
#  post 'users/create' => 'users#create', as: :users
#  delete 'users/:id/destroy' => 'users#destroy', as: :user_destroy
 # put 'users/update' => 'users#update'

  #get 'users/:user_id/addresses' => 'users#address' , as: :user_address
 # get 'users/:user_id/addresses/:address_id/edit' => 'users#editaddress', as: :user_edit_address
 # get 'users/:user_id/addresses/new' => 'users#newaddress', as: :user_new_address
 # post 'users/:user_id/addresses/create' => 'users#createaddress', as: :user_create_address
 # delete 'users/:user_id/addresses/:address_id' => 'users#destroyaddress', as: :user_destroy_address
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
