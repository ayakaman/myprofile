Rails.application.routes.draw do

  root to: 'homes#top'

  get 'lists/top' => 'lists#index'

  get 'lists' => 'lists#show'

  get 'lists/profile' => 'lists#profile'

end
