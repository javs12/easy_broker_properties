require 'easy_broker'
require_relative '../../lib/services/property_service'

RSpec.describe PropertyService do
  describe 'title_list' do
    subject(:title_list) { described_class.new.title_list }

    let(:properties_response) do
      client = EasyBroker.client
      client.properties.search
    end

    it 'returns all the property titles' do
      expect(title_list.size).to eq properties_response.total
    end
  end
end