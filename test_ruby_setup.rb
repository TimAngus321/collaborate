#!/usr/bin/env ruby

puts "🔍 Testing Ruby Setup..."
puts "Ruby version: #{RUBY_VERSION}"
puts "Ruby platform: #{RUBY_PLATFORM}"
puts

# Test basic Ruby functionality
begin
  require 'bundler/setup'
  puts "✅ Bundler loaded successfully"
rescue LoadError => e
  puts "❌ Bundler failed: #{e.message}"
  exit 1
end

# Test Rails loading
begin
  require 'rails'
  puts "✅ Rails loaded successfully (#{Rails.version})"
rescue LoadError => e
  puts "❌ Rails failed: #{e.message}"
  exit 1
end

# Test database adapter
begin
  require 'pg'
  puts "✅ PostgreSQL adapter loaded"
rescue LoadError => e
  puts "⚠️  PostgreSQL adapter not available: #{e.message}"
end

begin
  require 'sqlite3'
  puts "✅ SQLite adapter loaded"
rescue LoadError => e
  puts "⚠️  SQLite adapter not available: #{e.message}"
end

puts
puts "✨ Basic Ruby setup test completed!"
puts "If you see ✅ for bundler and rails, your Ruby installation is working."