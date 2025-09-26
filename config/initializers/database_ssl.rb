# Ensure SSL is properly configured for Render PostgreSQL
if Rails.env.production? && ENV['DATABASE_URL']
  # Set SSL environment variables if not already set
  # Use 'require' mode for encrypted connection without certificate verification
  ENV['PGSSLMODE'] ||= 'require'
  
  Rails.logger.info "Database SSL configuration:"
  Rails.logger.info "  PGSSLMODE: #{ENV['PGSSLMODE']}"
  Rails.logger.info "  DATABASE_URL includes sslmode: #{ENV['DATABASE_URL']&.include?('sslmode')}"
  Rails.logger.info "  SSL Mode: require (encrypted without certificate verification)"
end