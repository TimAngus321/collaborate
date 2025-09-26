# Fix for Ruby 3.1+ Logger compatibility issues
# This ensures Logger is loaded before ActiveSupport tries to use it

begin
  require 'logger' unless defined?(Logger)
rescue LoadError
  # Logger should be available in Ruby standard library
end