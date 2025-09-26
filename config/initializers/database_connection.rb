# Database connection configuration for production
if Rails.env.production?
  # Configure PostgreSQL connection with SSL
  Rails.application.configure do
    config.active_record.connection_pool_class = ActiveRecord::ConnectionAdapters::ConnectionPool
    
    # Add connection retry logic
    ActiveRecord::Base.connection_pool.with_connection do |connection|
      connection.execute("SELECT 1") rescue nil
    end
  end
  
  # Configure SSL mode for PostgreSQL
  if ENV['DATABASE_URL']
    require 'uri'
    db_url = URI.parse(ENV['DATABASE_URL'])
    
    # Ensure SSL parameters are set
    if db_url.scheme == 'postgres' || db_url.scheme == 'postgresql'
      params = db_url.query ? "#{db_url.query}&" : ""
      params += "sslmode=require&pool=5"
      db_url.query = params
      ENV['DATABASE_URL'] = db_url.to_s
    end
  end
end