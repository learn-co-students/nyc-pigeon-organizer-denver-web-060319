require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  temp = {}
  data.each do |attr, data2|
  	data2.each do |attr2, arr|
  		arr.each do |pigeon|
  			if (!temp[pigeon])
  				temp[pigeon] = {attr => [attr2.to_s]}
  			else
  				if (!temp[pigeon][attr])
  					temp[pigeon][attr] = [attr2.to_s]
  				else
  					temp[pigeon][attr] << attr2.to_s
  				end
  			end
  		end
  	end
  end
  temp
end

