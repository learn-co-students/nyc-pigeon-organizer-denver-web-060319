require "pry"
def nyc_pigeon_organizer(data)
  
  # write your code here!
  pigeon_array = data.values.first.values.flatten.uniq
  color_array = data[:color].keys 
  gender_array = data[:gender].keys
  lives_array = data[:lives].keys
  pigeon_list = Hash.new
  pigeon_array.each do |pigeon| 
    pigeon_list[pigeon] = {}
    pigeon_list[pigeon][:color] = color_array.map{|color| color.id2name if data[:color][color].include?(pigeon)}.compact
    pigeon_list[pigeon][:gender] = gender_array.map{|gender| gender.id2name if data[:gender][gender].include?(pigeon)}.compact
    pigeon_list[pigeon][:lives] = lives_array.map{|lives| lives if data[:lives][lives].include?(pigeon)}.compact
  end 
  pigeon_list
end