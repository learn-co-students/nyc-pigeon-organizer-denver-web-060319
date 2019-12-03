def nyc_pigeon_organizer(data)
  new_hash = {}
  pigeon_names = data.collect do |attributes, details|
    details.values
  end
  .flatten.uniq
  pigeon_names.each {|name| new_hash[name] = {}}
  data.each do |attributes, details|
    new_hash.each do |name, hash|
      new_hash[name][attributes] = []
    end
  end
  data.each do |attribute, details|
    details.each do |property, names|
      names.each do |name|
        new_hash[name][attribute] << property.to_s
      end
    end
  end
  
  new_hash

end