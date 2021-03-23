class Home < ApplicationRecord
  require 'will_paginate/array'

  def self.authentication
    response = Typhoeus.get( "https://www.orulo.com.br/api/v2/buildings", headers: { Authorization: "Bearer #{ENV['ORULO_TOKEN']}", Accept: 'application/JSON', 'Content-Type'=>'application/JSON', verbose: true })
    buildings =  JSON.parse(response.body)
  end

  def self.paginate_hash(response, page)
    buildings = []

    response['buildings'].each do |r|
      buildings.push(r)
    end

    response = buildings.paginate(page: page, per_page: 6)
  end

end
