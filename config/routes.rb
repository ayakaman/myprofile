Rails.application.routes.draw do

  root to: 'homes#top'

  get 'lists/top' => 'lists#index'

  get 'lists/profile' => 'lists#profile'

  get 'contacts' => 'contacts#index'
  post 'contacts/confirm' => 'contacts#confirm'
  post 'contacts/done' => 'contacts#done'

  get 'mockup/done' => 'mockup#done'

  get 'listworks/index' => 'listworks#index'

end
