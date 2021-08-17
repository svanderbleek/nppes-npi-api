class NppesDataAdapter

  def self.record_from(number, data)
    if data
      Record.create(model_fields(data))
    else
      Record.create(number: number)
    end
  end

  def self.model_fields(data)
    address = data["addresses"].first

    {
      number: data["number"],
      enum_type: data["enumeration_type"],
      address: "#{address["address_1"]} #{address["city"]}, #{address["state"]}",
      phone: address["telephone_number"],
      taxonomy: data["taxonomies"].first["desc"],
      name: data["basic"]["name"] || data["basic"]["organization_name"]
    }
  end
end
