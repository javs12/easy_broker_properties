# frozen_string_literal: true
require 'easy_broker'
require 'ostruct'

class PropertyService
  def title_list
    results = search_properties(limit: 50, page: 1)

    results.find_each do |property|
      property_titles << property.title
    end

    # without using the find_each method
    # property_titles = results.map(&:title)
    # loop do
    #   next_page = results.next_page
    #   break if next_page.nil?
    #
    #   property_titles.concat next_page.content.map(&:title)
    # end

    property_titles
  end

  private

  def search_properties(limit:, page:)
    client.properties.search(limit: limit, page: page)
  end

  def property_titles
    @property_titles ||= []
  end

  def client
    @client ||= EasyBroker.client
  end
end