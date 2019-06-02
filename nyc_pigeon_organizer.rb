def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |categories, value| 
    value.each do |property, values|
      values.each do |names|
        pigeon_list[names] ||= {}
        pigeon_list[names][categories] ||= []
        pigeon_list[names][categories] << property.to_s
      end
    end
  end
  pigeon_list
end