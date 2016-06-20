Rails.application.routes.draw do
  devise_for :usuarios
  resources :institucions

  resources :noticia

  resources :paintings

  resources :galleries

  resources :tipos

  resources :coordinadors
  
  get 'home/index' => 'home#index'
  get 'home/:id/ayudas_sociales' => 'home#ayudas_sociales', as: :ayudas_sociales
  get 'home/ayudas' => 'home#ayudas', as: :ayudas
  get 'home/contacto' => 'home#contacto', as: :contacto
  get 'home/quienes_somos'=> 'home#quienes_somos', as: :quienes_somos
  get 'home/noticias'=> 'home#noticias', as: :noticias
  get 'home/galerias'=> 'home#galerias', as: :galerias
  get 'home/:id/single_noticia'=>'home#single_noticia', as: :single_noticia
  get 'home/:id/single_galeria'=>'home#single_galeria', as: :single_galeria
  get 'home/pazyvida'=> 'home#pazyvida', as: :pazyvida
  get 'home/:id/solicitud'=> 'home#solicitud', as: :solicitud
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
