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
  #different_elements = array.uniq
  hash = {}
  end_array = []
  array.uniq.each do |element|
    element.each do |key,value|
      hash = {count: array.count(element)}
      hash[key] = value
    end_array << hash
    end
  end
  end_array
end


def merge_data(structure1, structure2)
  i = 0
  x = 0
  new_structure1 = {}
  new_structure2 = []
  new_array = []

  structure2.each do |elements|
    elements.each do |key,value|
      new_structure2 << value
    end
  end

  while i < structure1.length
    new_array << (structure1[i].merge(new_structure2[i]))
    i += 1
  end
new_array
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
