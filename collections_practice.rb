require "pry"

def begins_with_r (array)
  array.all? do |x|
    x.start_with? ("r")
  end
end

def contain_a (array)
  array.select do |x|
    x.include?("a")
  end
end

def first_wa (array)
  array.find do |x|
    x.to_s.start_with? ("wa")
  end
end

def remove_non_strings (array)
  array.delete_if do |x|
    x.class != String
  end
end

def count_elements (array)
  count = Hash.new(0)
  array.collect do |ele|
    count[ele] += 1
  end
  count.collect do |hash, number|
    hash[:count] = number
  end
  count.keys
end

# count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}])

def merge_data (keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool (array)
  cool = []
  array.each do |ele|
    ele.each do |k, v|
      if v == "cool"
        cool << ele
      end
    end
  end
  cool
end

def organize_schools (schools)
  school_list = {}
  schools.each do |school, location|
    location.each do |symbol, city|
      if school_list[location] == nil
        school_list[location] = [school]
        # binding.pry
      else
        school_list[location] << school
      end
    end
  end
  school_list
end
