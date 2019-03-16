require 'pry'
def begins_with_r(tools)
  tools.all? {|tool| tool.match(/^r/)}
end

def contain_a(array)
  array.select {|element| element.include? "a"}
end

def first_wa(array)
  array.find {|element| element.match(/^wa/)}
end

def remove_non_strings(array)
  array.reject {|element| !element.is_a? String}
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    array.each do |new_hash|
      if new_hash[:name] == hash[:name]
        hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(arr1, arr2)
  new_array = []
  arr2.each do |data_hash|
    data_hash.each do |name, hash|
      arr1.each do |keys_hash|
        if keys_hash[:first_name] == name
          new_array << keys_hash.merge(hash)
        end
      end
    end
  end
  new_array
end

def find_cool(cool)
  new_array = []
  cool.each do |hash|
    if hash[:temperature] == "cool"
      new_array << hash
    end
  end
  new_array
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |school_name, location_hash|
    location_hash.each do |location_key, location_value|
      if !new_hash[location_value].nil?
        new_hash[location_value] << school_name
      else
        school_array = []
        school_array << school_name
        new_hash[location_value] = school_array
      end
    end
  end
  new_hash
end
