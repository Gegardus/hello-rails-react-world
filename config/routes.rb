Rails.application.routes.draw do
  namespace :v1, default: { format: 'json'} do
    get 'greetings' => 'greetings#index'
  end

  root 'static#index'
  # Forward all requests to StaticController#index but requests
  # must be non-Ajax (!req.xhr?) and HTML Mime type (req.format.html?).
  # This does not include the root ("/") path.
  get '*page', to: 'static#index', constraints: ->(req) do
    !req.xhr? && req.format.html?
  end
end
