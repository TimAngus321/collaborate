# Ensure SSL is properly configured for Render PostgreSQL
if Rails.env.production? && ENV['DATABASE_URL']
  # Set SSL environment variables if not already set
  ENV['PGSSLMODE'] ||= 'require'
  ENV['PGSSLROOTCERT'] ||= 'system'
  
  Rails.logger.info "Database SSL configuration:"
  Rails.logger.info "  PGSSLMODE: #{ENV['PGSSLMODE']}"
  Rails.logger.info "  PGSSLROOTCERT: #{ENV['PGSSLROOTCERT']}"
  Rails.logger.info "  DATABASE_URL includes sslmode: #{ENV['DATABASE_URL'].include?('sslmode')}"
end