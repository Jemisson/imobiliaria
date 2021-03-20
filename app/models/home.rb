class Home < ApplicationRecord

  def self.authenticate
    resp = Typhoeus.get( "https://www.orulo.com.br/api/v2/buildings", headers: { Authorization: "Bearer #{ENV['ORULO_TOKEN']}", Accept: 'application/JSON', 'Content-Type'=>'application/JSON', verbose: true })
    resp =  JSON.parse(resp.body)
  end

end
