Go::Application.routes.draw do
  post 'sms' => "sms#index",                  :as => "sms_recieve"
  get 'new' => "urls#new",                    :as => "new_url"
  get 'login' => "urls#login"
  get "logout" => "sessions#destroy",         :as => "logout"
  get ':short' => "urls#show",                :as => "url"
  get ':short/+' => "urls#info",              :as => "info_url"
  post 'urls' => "urls#create"
  post 'api/new' => "urls#api_create"
  delete ":id" => "urls#destroy",             :as => "destroy_url"
  root :to => 'urls#index'
end
