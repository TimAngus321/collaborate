# Use the official Ruby image with the correct version
FROM ruby:3.0.6

# Install dependencies
RUN apt-get update -qq && apt-get install -y \
  nodejs \
  postgresql-client \
  yarn \
  && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the application code
COPY . .

# Precompile assets (if needed)
# RUN RAILS_ENV=production bundle exec rails assets:precompile

# Expose port 3000
EXPOSE 3000

# Default command
CMD ["rails", "server", "-b", "0.0.0.0"]