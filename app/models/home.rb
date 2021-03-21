class Home < ApplicationRecord

  def self.authentication
    resp = Typhoeus.get( "https://www.orulo.com.br/api/v2/buildings", headers: { Authorization: "Bearer #{ENV['ORULO_TOKEN']}", Accept: 'application/JSON', 'Content-Type'=>'application/JSON', verbose: true })
    resp =  JSON.parse(resp.body)

    resp = Bookmark.mount_json(resp)
  end

end
