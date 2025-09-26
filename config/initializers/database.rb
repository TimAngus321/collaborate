# Database configuration for Render deployment
if Rails.env.production?
  # Ensure SSL mode is set for Render PostgreSQL
  ENV['PGSSLMODE'] ||= 'require'
  
  # Configure database pool to match Puma threads
  Rails.application.configure do
    # Ensure database pool size matches the number of threads
    config.database_configuration[Rails.env]['pool'] = ENV.fetch('RAILS_MAX_THREADS', 5).to_i
    
    # Add connection retry logic for SSL issues
    config.database_configuration[Rails.env]['retry_on'] = [
      ActiveRecord::ConnectionNotEstablished,
      PG::ConnectionBad,
      PG::UnableToSend,
      PG::TRDeadlockDetected
    ]
  end
  
  Rails.logger.info "Database configuration for production:"
  Rails.logger.info "  SSL Mode: #{ENV['PGSSLMODE']}"
  Rails.logger.info "  Pool Size: #{ENV.fetch('RAILS_MAX_THREADS', 5)}"
  Rails.logger.info "  DATABASE_URL configured: #{ENV['DATABASE_URL'].present?}"
end