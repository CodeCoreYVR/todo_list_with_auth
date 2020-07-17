Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get('/', to: "welcome#root", as: :root)

  resources :tasks
  get('/complete_task/:id/', to: "tasks#complete_task", as: :complete_task)
end
