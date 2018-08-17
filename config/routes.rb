Rails.application.routes.draw do

  get 'sookmyung/csvsaves'

  devise_for :users
  
  get 'timetable/index'

  get 'timetable/create/:ewhaclass_id' => 'timetable#create'
  
  get 'timetable/search' => 'timetable#index'

  get 'ecomments/create'

  get 'ecomments/destroy'

  get 'ecomments/edit'
  
  get 'home/show_lecturecomment'
  get 'home/lecturecomment_ewha'
  get 'home/lecturecomment_sm'
  
  get 'ecomment/ewrite'
  get 'ecomment/star_create'
  get 'ecomment/star_update'
  
  get 'comment/write'
  get 'comment/star_create'
  get 'comment/star_update'
  
#  get 'home/show_user_post'
  
  get 'ecomments/update'

  get 'home/csvsave'
  
  
  get 'home/new'
  get 'home/new_ewha'
  
  post 'home/create'
  post 'home/create_ewha'
  
  get 'home/show'
  get 'home/show_ewha'
  
  get 'home/destroy/:post_id' =>'home#destroy'
  get 'home/destroy_ewha/:post_ewha_id' =>'home#destroy_ewha'
  
  get 'home/edit/:post_id' => 'home#edit'
  get 'home/edit_ewha/:post_ewha_id' => 'home#edit_ewha'
  
  post 'home/update/:post_id' => 'home#update'
  post 'home/update_ewha/:post_ewha_id' => 'home#update_ewha'
  
  get 'home/detail/:post_id' => 'home#detail'
  get 'home/detail_ewha/:post_ewha_id' => 'home#detail_ewha'
  
  post '/posts/:post_id/comments/create' => 'comments#create'
  post '/post_ewhas/:post_ewha_id/ecomments/create' => 'ecomments#create'
  
  get '/posts/:post_id/comments/:comments_id/destroy' => 'comments#destroy'
  get '/post_ewhas/:post_ewha_id/ecomments/:ecomments_id/destroy' => 'ecomments#destroy'
  
  get '/posts/:post_id/comments/:comments_id/edit' => 'comments#edit'
  get '/post_ewhas/:post_ewha_id/ecomments/:ecomments_id/edit' => 'ecomments#edit'

  post '/posts/:post_id/comments/:comments_id/update' => 'comments#update'
  post '/post_ewhas/:post_ewha_id/ecomments/:ecomments_id/update' => 'ecomments#update' 
  

  
 get 'comment/star_create', to: 'comment#star_create'
 get 'comment/write', to: 'comment#write'
 get 'comment/star_update', to: 'comment#star_update'
 
 get 'comment/search' => 'comment#search'
 
  root 'home#start'
  
  resources :lecture_ewhas do
    collection do
      get :search
    end
  end
  
  resources :lecture_eval do
    collection do
      get :search
    end
  end
  
    resources :lecture_eval_ewha do
    collection do
      get :search
    end
    end
  
  
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
