require "pry"

def begins_with_r(array)
  passed_array = []
  failed_array = []
  array.each do |element|
      if (element.downcase).start_with?("r")
        passed_array << element
      else
        failed_array << element
      end
  end
  #binding.pry
  if array == passed_array
    return true
  else
    return false
  end
end

def contain_a(array)
  passed_array = []
  array.each do |element|
    if(element.downcase).include?("a")
      passed_array << element
    end
  end
  passed_array
end

def first_wa(array)
  passed_array = []
  array.each do |element|
    if (element.downcase).to_s.start_with?("wa")
      passed_array << element
    end
  end
  passed_array[0]
end

def remove_non_strings(array)
  array.delete_if do |element|
    element.class != String
  end
  #array.keep.if {|element| element.class == String}
  array
end

def count_elements(array)
keys_array = []
values_array = []
  array.collect do |element|
    element.collect do |key,value|
    keys_array << key
    values_array << value
    end
  end

  array.collect do |element|
    element.count do |key,value|


end






def merge_data(structure1, structure2)
  new_array = []
  new_hash1 = {}
  new_hash2 = {}
#binding.pry
  structure1.each do |element|

  end


end


def find_cool(argument)
  new_array = []
  argument.collect do |element|
    element.each do |key, value|
      if value == "cool"
        new_array << element
      end
    end
  end
  new_array
end


def organize_schools(argument)
  locations_array = []
  organized_schools_hash = {}
  argument.each do |school_name,location_hash|
    location_hash.each do |location_key, location_value|
      locations_array << location_value
    end
  end

  locations_array.uniq!




  locations_array.collect do |location|
    organized_schools_hash[location] = []
    #binding.pry
    argument.collect do |school_name,location_hash|
      #binding.pry
      location_hash.collect do |location_key, location_value|
        if location_value == location
          #binding.pry
            organized_schools_hash[location] << school_name
        end
      end
    end
  end
  return organized_schools_hash

end




structure1 =[
  {:first_name=>"blake", :motto=>"Have a koala-ty day!"},

 {:first_name=>"ashley", :motto=>"I dub thee, 'Lady Brett Ashley'."}
]

#array filled with two hashes



 structure2 = [
   {"blake"=> {:awesomeness=>10, :height=>"74", :last_name=>"johnson"},

  "ashley"=>  {:awesomeness=>9, :height=>60, :last_name=>"dubs"}
}
]

#array filled with two hashes filled with a hash


[
  {:awesomeness=>10,
       :first_name=>"blake",
       :height=>"74",
       :last_name=>"johnson",
       :motto=>"Have a koala-ty day!"
     },

  {:awesomeness=>9,
       :first_name=>"ashley",
       :height=>60,
       :last_name=>"dubs",
       :motto=>"I dub thee, 'Lady Brett Ashley'."
       }
     ]


     def merge_data(structure1, structure2)
       new_array = []
       new_structure1 = {}
       new_structure2 = {}

       structure1.each do|element1|
         binding.pry
         new_structure1 = element1
       end
         structure2.each do |element2|
           element2.each do |key, value|
             #new_structure2 = value
             new_structure2 = value
             #new_array << value.merge(new_structure1)
           end

         end

       #new_array
     end


     while i < structure1.length

       new_structure1 = structure1[i]

       #while x < structure1
       structure2.collect do |element|
         element.collect do |key,value|
         new_structure2 = value
         #new_structure2 = (value.merge(new_structure1))

         #binding.pry
         new_array << new_structure2.merge(new_structure1)
         binding.pry
       end
       binding.pry
       end
       binding.pry
       i += 1
     end