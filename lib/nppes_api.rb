class NppesApi
  def self.query(number)
    #uri = URI("https://npiregistry.cms.hhs.gov/api/?version=2.1&number=" + number)

    #response = Net::HTTP.get_response(uri)

    #if response.is_a?(Net::HTTPSuccess)
      data = JSON.parse("{\"result_count\":1, \"results\":[{\"enumeration_type\": \"NPI-2\", \"number\": 1215195382, \"last_updated_epoch\": 1211846400, \"created_epoch\": 1211846400, \"basic\": {\"organization_name\": \"rAISER PERMANENTE\", \"organizational_subpart\": \"NO\", \"enumeration_date\": \"2008-05-27\", \"last_updated\": \"2008-05-27\", \"status\": \"A\", \"authorized_official_credential\": \"PT\", \"authorized_official_first_name\": \"CHARLES\", \"authorized_official_last_name\": \"HOWLETT\", \"authorized_official_middle_name\": \"FREDRICK DAVID\", \"authorized_official_telephone_number\": \"509-842-2505\", \"authorized_official_title_or_position\": \"PHYSICAL THERAPIST\", \"name\": \"KAISER PERMANENTE\"}, \"other_names\": [], \"addresses\": [{\"country_code\": \"US\", \"country_name\": \"United States\", \"address_purpose\": \"LOCATION\", \"address_type\": \"DOM\", \"address_1\": \"2555 OLD QUARRY RD\", \"address_2\": \"\", \"city\": \"SAN DIEGO\", \"state\": \"CA\", \"postal_code\": \"92108\", \"telephone_number\": \"509-842-2505\"}, {\"country_code\": \"US\", \"country_name\": \"United States\", \"address_purpose\": \"MAILING\", \"address_type\": \"DOM\", \"address_1\": \"2555 OLD QUARRY RD\", \"address_2\": \"\", \"city\": \"SAN DIEGO\", \"state\": \"CA\", \"postal_code\": \"921082792\"}], \"taxonomies\": [{\"code\": \"282N00000X\", \"desc\": \"General Acute Care Hospital\", \"primary\": true, \"state\": \"CA\", \"license\": \"34660\"}], \"identifiers\": [{\"identifier\": \"=========4\", \"code\": \"05\", \"desc\": \"MEDICAID\", \"state\": \"CA\", \"issuer\": \"\"}]}]}")#response.body)
      data["results"]&.first
    #end
  end
end
