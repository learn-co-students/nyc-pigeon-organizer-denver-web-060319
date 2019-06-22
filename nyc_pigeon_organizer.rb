require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
#generate an array of pigeons; set each pigeon as a key pointing to a value of an empty array, and add to pigeon_list hash
  data.map {|key, value| value.map {|characteristic, pigeon| pigeon }}.flatten.uniq.map {|pigeon| pigeon_list[pigeon] = {}} 
#populate each pigeon's empty array with the keys :color, :gender and :lives; each of these will be a key pointing to an empty array
  data.keys.map {|key| pigeon_list.map {|pigeon, hash| hash[key] = []}} 
#go through each possible type of characteristic in original data set, looking at each bird then push the type of characteristic to pigeon_list's corresponding array
  data.map {|quality, types| types.map {|type, birds| birds.map {|bird| pigeon_list[bird][quality].push(type.to_s)}} }
#return new hash
  pigeon_list
end