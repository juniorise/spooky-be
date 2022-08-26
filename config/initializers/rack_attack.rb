Rack::Attack.enabled = ENV['ENABLE_RACK_ATTACK'] || Rails.env.production?
Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new # defaults to Rails.cache

# BLOCK
Rack::Attack.throttle("req/ip", :limit => 50, :period => 10.minute) do |req|
  req.ip
end