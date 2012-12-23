CourseProject::Application.routes.draw do
  root to: "lists#index"

  resources :lists, :only => [:index, :new, :create, :show] do
  	resources :items, only: [:index, :new, :create, :show, :update]
  end

end
