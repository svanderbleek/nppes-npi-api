class NppesApi
  def self.query(number)
    uri = URI("https://npiregistry.cms.hhs.gov/api/?version=2.1&number=" + number)

    response = Net::HTTP.get_response(uri)

    if response.is_a?(Net::HTTPSuccess)
      data = JSON.parse(response.body)
      data["results"]&.first
    end
  end
end
