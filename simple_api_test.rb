#!/usr/bin/env ruby

require 'webrick'
require 'json'

# Simple test data
test_requests = [
  {
    id: 1,
    description: "Looking for a drummer for this rock track",
    created_at: "2025-09-26T14:30:00Z",
    updated_at: "2025-09-26T14:30:00Z",
    deleted_at: nil,
    instrument: {
      id: 1,
      name: "Drums"
    },
    track: {
      id: 1,
      name: "My Rock Song",
      bpm: 120,
      time_signature: "4/4",
      key: "C",
      file_url: "https://example.com/track.mp3",
      user: {
        id: 1,
        first_name: "John",
        last_name: "Doe"
      },
      genre: {
        id: 1,
        name: "Rock"
      }
    },
    submissions_count: 3
  },
  {
    id: 2,
    description: "Need a bass line for this jazz piece",
    created_at: "2025-09-26T15:00:00Z",
    updated_at: "2025-09-26T15:00:00Z",
    deleted_at: nil,
    instrument: {
      id: 2,
      name: "Bass"
    },
    track: {
      id: 2,
      name: "Jazz Improv",
      bpm: 90,
      time_signature: "4/4",
      key: "Bb",
      file_url: "https://example.com/jazz_track.mp3",
      user: {
        id: 2,
        first_name: "Jane",
        last_name: "Smith"
      },
      genre: {
        id: 2,
        name: "Jazz"
      }
    },
    submissions_count: 1
  }
]

server = WEBrick::HTTPServer.new(:Port => 3001)

# CORS headers
def add_cors_headers(response)
  response['Access-Control-Allow-Origin'] = '*'
  response['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
  response['Access-Control-Allow-Headers'] = 'Content-Type, Authorization'
end

# Handle OPTIONS requests (CORS preflight)
server.mount_proc '/api/v1' do |request, response|
  add_cors_headers(response)
  
  if request.request_method == 'OPTIONS'
    response.status = 200
    response.body = ''
    next
  end
  
  case request.path_info
  when '/requests'
    if request.request_method == 'GET'
      response.status = 200
      response['Content-Type'] = 'application/json'
      response.body = JSON.pretty_generate({
        requests: test_requests
      })
    else
      response.status = 405
      response.body = 'Method not allowed'
    end
  when /^\/requests\/(\d+)$/
    request_id = $1.to_i
    found_request = test_requests.find { |r| r[:id] == request_id }
    
    if request.request_method == 'GET'
      if found_request
        response.status = 200
        response['Content-Type'] = 'application/json'
        response.body = JSON.pretty_generate({
          request: found_request
        })
      else
        response.status = 404
        response['Content-Type'] = 'application/json'
        response.body = JSON.generate({ error: 'Request not found' })
      end
    elsif request.request_method == 'DELETE'
      if found_request
        found_request[:deleted_at] = Time.now.strftime('%Y-%m-%dT%H:%M:%SZ')
        response.status = 200
        response['Content-Type'] = 'application/json'
        response.body = JSON.generate({
          message: 'Request was successfully soft deleted.'
        })
      else
        response.status = 404
        response['Content-Type'] = 'application/json'
        response.body = JSON.generate({ error: 'Request not found' })
      end
    else
      response.status = 405
      response.body = 'Method not allowed'
    end
  else
    response.status = 404
    response.body = 'Not found'
  end
end

trap('INT') { server.shutdown }

puts "🚀 Starting Simple API Test Server on http://localhost:3001"
puts "📋 Available endpoints:"
puts "   GET  /api/v1/requests"
puts "   GET  /api/v1/requests/:id" 
puts "   DELETE /api/v1/requests/:id"
puts
puts "💡 Test with:"
puts "   curl http://localhost:3001/api/v1/requests"
puts "   curl http://localhost:3001/api/v1/requests/1"
puts "   curl -X DELETE http://localhost:3001/api/v1/requests/1"
puts
puts "Press Ctrl+C to stop"

server.start