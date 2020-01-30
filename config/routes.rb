Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'http_reqs/req_url' => "http_reqs#req_url"
end
