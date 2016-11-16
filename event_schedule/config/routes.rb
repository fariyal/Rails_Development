Rails.application.routes.draw do


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

get "sign_up" => "users#new", :as => "sign_up"
post"sign_up" => "users#create", :as => "saveuser"

get "log_in" => "sessions#new", :as => "log_in"
post "log_in" => "sessions#create", :as => "create_event"
get "log_out" => "sessions#destroy", :as => "log_out"


get "/events/index" => "events#index", :as => "events_list"

get "/events/new" => "events#new", :as =>"event_page"
post "/events/new" => "events#create", :as => "show_event"

get "event_new_form" => "events#newform", :as => "event_new_form"
post "event_new_form" => "events#create", :as => "event_new_create"

get "events/:event_id/edit" =>"events#edit", :as => "event_edit"
post"events/:event_id/edit" =>"events#update", :as=> "event_update"


root :to => "users#new"
resources :users
resources :sessions



# get "/users/:user_id/events" => "events#index", as: :list_events

# get "/users/:user_id/events/new" => "events#new", as: :new_event

# post "/users/:user_id/events" => "events#create", as: :create_event

# get "/users/:user_id/events/:event_id/participents" => "events#list_participents", as: :list_participents


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
