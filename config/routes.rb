Rails.application.routes.draw do

  root                     'static_pages#home'
  get    'contacts'     =>  'contacts#new'
  get    'recent_news'  =>  'static_pages#recent_news'
  get    'about_us'     =>  'static_pages#about_us'
  get    'location'     =>  'static_pages#location'

  get    'login'        =>  'sessions#new'
  post   'login'        =>  'sessions#create'
  delete 'logout'       =>  'sessions#destroy'

  resources :blogposts,   only: [:create, :destroy]
  resources "contacts",   only: [:new, :create]


  get    'transloading' =>  'service_pages#transloading'
  get    'warehousing'  =>  'service_pages#warehousing'
  get    'drayage'      =>  'service_pages#drayage'
  get    'packaging'    =>  'service_pages#packaging'
  get    'rail_access'  =>  'service_pages#rail_access'
  get    'trucking'     =>  'service_pages#trucking'
  get    'welding'      =>  'service_pages#welding'
  get    'stripping_and_stuffing'    =>  'service_pages#stripping'


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
