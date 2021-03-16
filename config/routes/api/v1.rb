post "/login", to: "auth#login"
post "/sign-up", to: "auth#sign_up"

resources :app_configs, only: [] do
  collection do
    get :initial
  end
end
