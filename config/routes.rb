Rails.application.routes.draw do
  resources :smartdevices
  namespace :page do
  get 'login/index'
  get 'top/index'
  get 'top/show'
  end

  namespace :admin do
    get 'manage/top'
    get 'manage/manage_users'
    get 'manage/manage_clients'
    get 'manage/manage_accounts'
  end

  namespace :api do
    get 'helloworld/helloJson'
    get 'helloworld/helloXml'
  end

  get 'page/list'
  get 'page/table'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  match 'login' => 'page/login#index', :via => :get
  root 'page/login#index'
  get 'helloworld/index'
  get 'helloworld/hello'
  get 'helloworld/hello1'
  get 'helloworld/hello2'
  get 'helloworld/hello3'
  get 'helloworld/nothing'
  get 'helloworld/json'
  get 'helloworld/xml'
  
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
