require 'pry'

def begins_with_r(array)

  array.any? do |word|
    if word[0] != "r"
      return false 
    end 
  end 
return true 

end 

def contain_a(array)
new_arr = []
array.each do |word|
  i = 0
  while i < word.length
  if word[i] == "a"
    new_arr << word 
  end 
  i += 1
end   

end
new_arr
end 

def first_wa(array)
  array.each do |word|
    if word[0] + word[1] == 'wa'
      return word
    end
  end
end

def remove_non_strings(array)
string_arr = []
array.each do |word|
if word.class == String
  string_arr << word
end

end 
  string_arr
end 


def count_elements(array)
  count_arr = []
  array.uniq.each do |name|
    name.each do |key, value|
      count_arr << {count: array.count(name), name: value}
    end
  end
  return count_arr
end

def merge_data( key, data)
  merged_data = []
  data.each do |new_info|
   new_info.each do |name,attrib|
    key.each do | person |
     #binding.pry 
     if person[:first_name] == name 
       #binding.pry
      merged_data << person.merge(attrib)
     end 
    end 
  end 
end 
merged_data
end 

def find_cool(array)
  cool_cat = []
  array.each do |info|
   info.each do |key,value|
     if value == "cool"
       cool_cat << info
     end 
   end 
 end 
 cool_cat
end 

def organize_schools(hash)
  org_schools = {}
  hash.each do |school, city|
    #binding.pry
    if org_schools.key?(city[:location])
      org_schools[city[:location]] << school
    else
      org_schools[city[:location]] = [school]
    end
  end
 org_schools
end 


