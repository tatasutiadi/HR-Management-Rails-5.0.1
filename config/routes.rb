Rails.application.routes.draw do


  get 'history_education/:idemp/new' , :to=>'history_education#new'
  get 'history_education/:id/:idemp/delete' , :to =>'history_education#delete'

  get 'employee_training/:idemp/new' , :to=>'employee_training#new'
  get 'employee_training/:id/:idemp/delete' , :to =>'employee_training#delete'

  get 'create-employee' , :to =>'employee#new' ,:as =>'addemployee'
  get 'employee/:id/delete' , :to =>'employee#delete'
  post 'employee/:id' , :to=>'employee#update'

  get 'companies/:id/delete' , :to =>'companies#delete'
  get 'departements/:id/delete' , :to =>'departements#delete'
  get 'religions/:id/delete' , :to =>'religions#delete'
  get 'positions/:id/delete' , :to =>'positions#delete'
  get 'educations/:id/delete' , :to =>'educations#delete'
  get 'banks/:id/delete', :to =>'banks#delete' , :as => 'delete'

  get 'login',:to=>'user#new'
  get 'logout',:to=>'user#logout'
  post "auth" ,:to=> "user#login"
  get "language/:lang" ,:to=> "user#setlanguage" ,:as => 'language'
  get 'dashboard',:to=>'dashboard#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'dashboard#index'

  resources :user,:banks,:educations,:positions,:religions,:departements,:companies,:employee
  resources :employee, :as => 'employees'
  resources :history_education, :as => 'history_educations'
  resources :employee_training, :as => 'employee_trainings'

  # resources :user do
  #   collection do
  #     get "language/:lang" ,:to=> "user#setlanguage" ,:as => 'language'
  #   end
  # end

end
