Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations], controllers: {
    sessions: 'sessions'
  }

  root 'welcome#index'
  get 'our-story' => 'welcome#our_story'
  get 'our-services' => 'welcome#our_services'
  get 'support-us' => 'welcome#support_us'
  get 'contact-us' => 'welcome#contact_us'
  get 'events' => 'events#index'
  get 'login' => 'welcome#log_in'
  get 'administration' => 'welcome#administration'
  get 'media_api' => 'events#media_api'


  resources :community_resources
  resources :events
  resources :team_members
  resources :media

end
