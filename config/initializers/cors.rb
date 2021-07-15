Rails.application.config.middleware.insert_before 0, Rack::Cors do
  # Development
  allow do
    origins "http://localhost:3000"
    resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :optinos, :head], credentials: true
  end

  # Production
  # allow do
  #   origins ""
  #   resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :optinos, :head], credentials: true
  # end


end