Rails.application.routes.draw do
  get 'maths/mostrar_suma'
  get 'productos/index'
  get 'productos/:id' => 'productos#show'
  get 'productos/create'
  get 'productos/edit'
  get 'productos/update'
  get 'productos/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
