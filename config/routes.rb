Rails.application.routes.draw do
  # List all tasks
  get 'tasks', to: 'tasks#index', as: 'tasks'

  # New task form
  get 'tasks/new', to: 'tasks#new', as: 'new_task'

  # Create a new task
  post 'tasks', to: 'tasks#create'

  # Show a specific task
  get 'tasks/:id', to: 'tasks#show', as: 'task'

  # Edit a task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  # Update a task
  patch 'tasks/:id', to: 'tasks#update'

  # Delete a task
  delete 'tasks/:id', to: 'tasks#destroy'

  # Set the homepage to tasks list
  root 'tasks#index'
end
