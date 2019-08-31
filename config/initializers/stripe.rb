Rails.configuration.stripe = {
  # secret_key: ENV['STRIPE_SECRET_KEY'],
  # publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
  publishable_key: Rails.application.credentials[:stripe][:publishable_key], 
  secret_key:      Rails.application.credentials[:stripe][:secret_key] 
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]