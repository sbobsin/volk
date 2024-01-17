if Rails.application.credentials.present? && Rails.application.credentials[:secret].present?
  Stripe.api_key = Rails.application.credentials[:secret]
end
