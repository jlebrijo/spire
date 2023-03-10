class Address < ApplicationRecord
  def standarize
    USPS.config.username = Rails.application.credentials.dig(:usps_user_id) # UserID
    usps_address = USPS::Address.new(attributes.except('id', 'standarized', 'created_at', 'updated_at'))
    req = USPS::Request::AddressStandardization.new(usps_address)
    response = req.send!
    resp = response.get(usps_address)
    self.attributes = resp.to_h.except(:name, :return_text)
    self.standarized = true
    self
  end
end
