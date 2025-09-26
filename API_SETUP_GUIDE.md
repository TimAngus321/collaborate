# Rails API Setup with Soft Delete - Complete! 🚀

## What We've Built

Your Rails app has been converted to support API functionality with a focus on the Requests endpoint with soft delete capability.

## Changes Made

### 1. Rails API Configuration
- ✅ Updated `config/application.rb` to enable API mode
- ✅ Added CORS configuration for React Native compatibility
- ✅ Added `rack-cors` gem to Gemfile

### 2. API Structure
- ✅ Created `Api::BaseController` with common API functionality
- ✅ Created `Api::V1::BaseController` for versioning
- ✅ Set up API routes namespace at `/api/v1/`

### 3. Soft Delete for Requests
- ✅ Updated `Request` model with soft delete functionality:
  - `soft_delete!` method
  - `restore!` method  
  - `deleted?` check method
  - `active` and `deleted` scopes
  - Updated default scope to only show active records

### 4. API Endpoints
- ✅ Created `Api::V1::RequestsController` with:
  - `GET /api/v1/requests` - List all requests
  - `GET /api/v1/requests/:id` - Show specific request
  - `GET /api/v1/requests/:id/submissions` - Show submissions for request

## API Response Format

```json
{
  "requests": [
    {
      "id": 1,
      "description": "Looking for a drummer",
      "created_at": "2023-09-26T14:30:00Z",
      "updated_at": "2023-09-26T14:30:00Z",
      "instrument": {
        "id": 1,
        "name": "Drums"
      },
      "track": {
        "id": 1,
        "name": "My Song",
        "bpm": 120,
        "time_signature": "4/4",
        "key": "C",
        "file_url": "https://example.com/track.mp3",
        "user": {
          "id": 1,
          "first_name": "John",
          "last_name": "Doe"
        },
        "genre": {
          "id": 1,
          "name": "Rock"
        }
      },
      "submissions_count": 3
    }
  ]
}
```

## Next Steps

### 1. Run the Migration (when Ruby issue is resolved)
```bash
rails db:migrate
```

### 2. Install Dependencies
```bash
bundle install
```

### 3. Start the Server
```bash
rails server
```

### 4. Test the API

#### List Requests
```bash
curl -X GET http://localhost:3000/api/v1/requests
```

#### Get Single Request  
```bash
curl -X GET http://localhost:3000/api/v1/requests/1
```

#### Soft Delete Request (requires authentication)
```bash
curl -X DELETE http://localhost:3000/api/v1/requests/1 \
  -H "Authorization: Bearer YOUR_AUTH_TOKEN"
```

## React Native Integration

Your React Native app can now make requests to:
- Base URL: `http://localhost:3000/api/v1/` (development)
- Endpoints: `/requests`, `/requests/:id`

Example React Native code:
```javascript
// Fetch requests
const response = await fetch('http://localhost:3000/api/v1/requests');
const data = await response.json();
console.log(data.requests);

// Delete request
await fetch(`http://localhost:3000/api/v1/requests/${requestId}`, {
  method: 'DELETE',
  headers: {
    'Authorization': `Bearer ${authToken}`,
    'Content-Type': 'application/json'
  }
});
```

## Authentication Notes

The API is set up to work with your existing Devise authentication. For production use with React Native, consider:
1. Token-based authentication (JWT)
2. API key authentication
3. OAuth integration

## Files Modified/Created

- `config/application.rb` - API mode + CORS
- `Gemfile` - Added rack-cors
- `config/routes.rb` - Added API namespace
- `app/models/request.rb` - Added soft delete functionality
- `app/controllers/api/base_controller.rb` - Base API controller
- `app/controllers/api/v1/base_controller.rb` - V1 base controller  
- `app/controllers/api/v1/requests_controller.rb` - Requests API controller
- `db/migrate/xxx_add_deleted_at_to_requests.rb` - Migration for soft delete column