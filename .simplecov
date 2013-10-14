SimpleCov.start 'rails' do
  add_filter "/app/admin"
  add_group "API", "app/api"
end