# frozen_string_literal: true

require 'easy_broker'


EasyBroker.configure do |config|
  config.api_key = 'l7u502p8v46ba3ppgvj5y2aad50lb9'

  # Optionally change the root API URL
  config.api_root_url = EasyBroker::STAGING_API_ROOT_URL

  # As an integration partner you must configure the country code
  # config.country_code = 'MX'

  # Get the information from the organizations connected to your site using a partner code
  # config.use_partner_code = true
end
