Rails.application.routes.draw do
  namespace :admin do 
    resources :users
  end
  namespace :editores do 
    resources :categories
  end
  resources :categories do 
    resources :books
  end
  #generacion normal de recursos para books
  resources :books
  #generacion de resources anidados
  resources :editorials do 
    resources :books, only: [:index, :new, :create]
  end
  #generacion de recursos anidados
  #Author - Books
  resources :authors do 
    resources :books
  end
  scope module: 'editores' do 
    resources :categories
  end
  resources :authors
  resources :users do 
    resources :books, :borrowings
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
