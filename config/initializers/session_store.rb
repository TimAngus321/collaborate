# Configurations
session_url = "#{ENV.fetch('REDIS_CACHE_URL', 'redis://127.0.0.1:6379')}/0/session"
secure = Rails.env.production?
key = Rails.env.production? ? "_app_session" : "_app_session_#{Rails.env}"
domain = ENV.fetch("DOMAIN_NAME", "localhost")

Rails.application.config.session_store :redis_store,
                                       url: session_url,
                                       expire_after: 180.days,
                                       key: key,
                                       domain: domain,
                                       threadsafe: true,
                                       secure: secure,
                                       same_site: :lax,
                                       httponly: true