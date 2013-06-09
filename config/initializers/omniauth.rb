Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, "c71fdf30d10b14939c35", "27c6c1e4fe9b70a76c2e91964b1f40be17eb31dd"
end
