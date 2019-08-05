class ChargesController < ApplicationController
  def create
    Stripe.api_key = ENV['STRIPE_SECRET_KEY']
    token = params[:stripeToken]
    current_user.checkout!(token)
    redirect_to root_path, notice: 'お支払いが完了しました'
  end
end
