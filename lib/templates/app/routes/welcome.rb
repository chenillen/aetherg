class <%= @name.camelcase %>::Application
  # root default route
  get "/" do
    "Hello World! from #{@name.camelcase}."
  end
end
