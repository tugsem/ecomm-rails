class CheckoutsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    stripe_secret_key = Rails.application.credentials.dig(:stripe, :stripe_secret_key)
    Stripe.api_key = stripe_secret_key
    cart = params[:cart]

    line_items = cart.map do |item|
      product = Product.find(item["id"])
      product_stock = product.stocks.find{ |ps| ps.size == item["size"] }

      if product_stock.amount < item["quantity"].to_i
        render json: { error: "Not enough stock for #{product.name} in size #{item["size"]}. Only #{product_stock.amount} left." }, status: 400
        return
      end

      {
        quantity: item["quantity"].to_i,
        price_data: {
          product_data: {
            name: item["name"],
            metadata: {
              product_id: product.id,
              size: item["size"],
              product_stock_id: product_stock.id
            }},
            currency: "usd",
            unit_amount: item["price"].to_i*100,
        }
      }
    end

    session = Stripe::Checkout::Session.create(
      mode: "payment",
      line_items: line_items,
      success_url: "https://mysite-zxr1.onrender.com/success",
      cancel_url: "https://mysite-zxr1.onrender.com/cancel",
      shipping_address_collection: {
       allowed_countries: ["US", "CA", "TR"]
      }
    )
    render json: { url: session.url }
  end

  def success
    render :success
  end

  def cancel
    render :cancel
  end
end