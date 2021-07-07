require 'pry'


def nyc_pigeon_organizer(data)

new_pigeon_hash = {}

name_array = []
extra_empty_hash_just_in_case = {}

#Get a unique array of names.
  data.each do |a, b| # a == color, gender, lives. b == subset hash.
    b.each do |c, d| # c == purple, male, subway. d == subset array
      d.each do |x| # x == array element.
        name_array << x
      end
    end
  end

  uniq_names = name_array.uniq

  uniq_names.each do |x|
    new_pigeon_hash[x] = {}
  end

  new_pigeon_hash.each do |name, attribute|
    attribute[:color] = []
    attribute[:gender] = []
    attribute[:lives] = []
  end

  data.each do |a, b|
      b.each do |c, d|
        d.each do |name|
          new_pigeon_hash.each do |string_name, attribute_key|
            if name == string_name
              new_pigeon_hash[string_name][a] << c.to_s
            end
          end
        end
      end
    end

new_pigeon_hash
          #binding.pry
end


###############PLAN, very similar to recent bang-up organizer job.

# first, we create a hash, alphasorted with stringkeys of names.
    #CHECK
# second, set each stringkey equal to sym_attribute color, gender, lives.
    #CHECK
# third, we grab related values by iterating through each in OG set.
    #

####Question for the peanut gallery... is it possible not to dip back and forth,
####in and out of the initial data hash? Can we iterate through one time and
####accomplish everything we need to accomplish?

## Let's try not to leave the iteration if we can help it...

## it may require creating an extra hash to add to...
