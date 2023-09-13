Rails.application.routes.draw do

  root to: 'homes#top'

  get 'lists/top' => 'lists#index'

  get 'lists/profile' => 'lists#profile'

  resources :contacts, only: [:index, :confirm]

  post 'contacts/confirm', to: 'contacts#confirm', as: 'confirm'
  post 'contacts/back', to: 'contacts#back', as: 'back'
  get 'done', to: 'contacts#done', as: 'done'

end
