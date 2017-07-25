Rails.application.routes.draw do
  get 'bicycleposts/index'

  get 'bicycleposts/add'

  get 'bicycleposts/edit'

  get 'bicycleposts/delete'

  get 'bicyclecategories/index'

  get 'bicyclecategories/add'

  get 'bicyclecategories/edit'

  get 'bicycleconfigs/index'

  get 'bicycleconfigs/edit'
  resources :bicycleposts
  resources :bicycleconfigs
  resources :bicyclecategories

  devise_for :admins
  	as :admmin do 
  		get 'admins/edit' => 'devise/registrations#edit', :as => 'edit_admin_registration'
  		put 'users' => 'devise/registrations#update', :as => 'admin_registration'
  	end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
