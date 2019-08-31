class Charge
  def initialize
    Stripe.api_key = Rails.application.credentials[:stripe][:secret_key]
  end

  def create!(price, token)
    Stripe::Charge.create(
      amount: price,
      currency: 'jpy',
      description: 'Example charge',
      source: token
    )
  end

  def self.create!(price, token)
    charge = new
    charge.create!(price, token)
  end
end
