Rails.application.routes.draw do
  devise_for :users

get "boards" => "boards#index"
get "boards/new" => "boards#new", as: :new_board
post "/boards" => "boards#create"
get "/boards/:id/edit" => "boards#edit", as: :edit_board
get "boards/:id" => "boards#show", as: :board
patch "boards/:id" => "boards#update"
delete "boards/:id" => "boards#destroy"

get "categories" => "categories#index"
get "categories/new" => "categories#new", as: :new_category
post "/categories" => "categories#create"
get "/categories/:id/edit" => "categories#edit", as: :edit_category
get "categories/:id" => "categories#show", as: :category
patch "categories/:id" => "categories#update"
delete "categories/:id" => "categories#destroy"

get "images" => "images#index"
get "images/new" => "images#new", as: :new_image
post "/images" => "images#create"
get "/images/:id/edit" => "images#edit", as: :edit_image
get "images/:id" => "images#show", as: :image
patch "images/:id" => "images#update"
delete "images/:id" => "images#destroy"

get "recipe_steps" => "recipe_steps#index"
get "recipe_steps/new" => "recipe_steps#new"
post "/recipe_steps" => "recipe_steps#create"
get "/recipe_steps/:id/edit" => "recipe_steps#edit", as: :edit_recipe_step
get "recipe_steps/:id" => "recipe_steps#show", as: :recipe_step
patch "recipe_steps/:id" => "recipe_steps#update"
delete "recipe_steps/:id" => "recipe_steps#destroy"








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
