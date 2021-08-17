Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # List all tasks
  get 'tasks', to: 'tasks#index'

  # New task form
  get 'tasks/new', to: 'tasks#new'

  # Save a task in DB
  post 'tasks', to: 'tasks#create'

  # Show one task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Edit task form
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit

  # Update task in DB
  patch 'tasks/:id', to: 'tasks#update'

  # Delete a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
