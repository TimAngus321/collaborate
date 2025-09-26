# Database connection configuration for production
if Rails.env.production?
  # Configure SSL mode for PostgreSQL
  if ENV['DATABASE_URL']
    require 'uri'
    
    begin
      db_url = URI.parse(ENV['DATABASE_URL'])
      
      # Ensure SSL parameters are set
      if db_url.scheme == 'postgres' || db_url.scheme == 'postgresql'
        params = db_url.query ? "#{db_url.query}&" : ""
        params += "sslmode=require" unless params.include?('sslmode=')
        db_url.query = params
        ENV['DATABASE_URL'] = db_url.to_s
      end
    rescue URI::InvalidURIError => e
      Rails.logger.warn "Invalid DATABASE_URL: #{e.message}" if defined?(Rails.logger)
    end
  end
end
