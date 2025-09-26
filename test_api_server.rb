#!/usr/bin/env ruby

require 'webrick'
require 'json'

# Mock data for testing
requests_data = [
  {
    id: 1,
    name: 'John Doe',
    email: 'john@example.com',
    message: 'Need help with project',
    created_at: '2024-01-15T10:30:00Z'
  },
  {
    id: 2,
    name: 'Jane Smith', 
    email: 'jane@example.com',
    message: 'Collaboration request for mobile app',
    created_at: '2024-01-16T14:20:00Z'
  }
]

submissions_data = [
  {
    id: 1,
    title: 'Web Development Project',
    description: 'Full stack React/Node.js application',
    status: 'active',
    created_at: '2024-01-15T09:15:00Z'
  },
  {
    id: 2,
    title: 'Mobile App Design',
    description: 'React Native iOS/Android app',
    status: 'completed',
    created_at: '2024-01-14T16:45:00Z'
  }
]

server = WEBrick::HTTPServer.new(Port: 3001)

# CORS headers
def add_cors_headers(response)
  response['Access-Control-Allow-Origin'] = '*'
  response['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
  response['Access-Control-Allow-Headers'] = 'Content-Type, Authorization'
end

# API endpoints
server.mount_proc '/api/v1/requests' do |req, res|
  add_cors_headers(res)
  if req.request_method == 'OPTIONS'
    res.status = 200
  else
    res['Content-Type'] = 'application/json'
    res.body = { requests: requests_data }.to_json
    puts "[#{Time.now}] GET /api/v1/requests - returned #{requests_data.length} requests"
  end
end

server.mount_proc '/api/v1/submissions' do |req, res|
  add_cors_headers(res)
  if req.request_method == 'OPTIONS'
    res.status = 200
  else
    res['Content-Type'] = 'application/json'
    res.body = { submissions: submissions_data }.to_json
    puts "[#{Time.now}] GET /api/v1/submissions - returned #{submissions_data.length} submissions"
  end
end

# Health check
server.mount_proc '/health' do |req, res|
  add_cors_headers(res)
  res['Content-Type'] = 'application/json'
  res.body = { status: 'ok', timestamp: Time.now.iso8601 }.to_json
end

# Root endpoint
server.mount_proc '/' do |req, res|
  add_cors_headers(res)
  res['Content-Type'] = 'application/json'
  res.body = { 
    message: 'Collaborate API Server',
    version: '1.0.0',
    endpoints: [
      'GET /api/v1/requests',
      'GET /api/v1/submissions', 
      'GET /health'
    ]
  }.to_json
end

puts 'Starting API test server on http://localhost:3001'
puts 'Available endpoints:'
puts '  GET / - API info'
puts '  GET /health - Health check'
puts '  GET /api/v1/requests - List requests' 
puts '  GET /api/v1/submissions - List submissions'
puts ''
puts 'Press Ctrl+C to stop'

trap('INT') { server.shutdown }
server.start