require 'easy_broker'
require_relative '../../lib/services/property_service'

RSpec.describe PropertyService do

  describe 'call' do
    subject(:print_list) { described_class.new.print_list }

    it 'returns output' do
      expect { print_list }.to output.to_stdout
    end

    context 'there are no properties' do
      it 'returns empty output' do
        expect{ print_list }.to output('there are no properties').to_stdout
      end
    end
  end

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
