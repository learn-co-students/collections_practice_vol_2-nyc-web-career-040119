require 'pry'
# your code goes here
def begins_with_r(array)
  array.all? do |arr|
    # if arr[0] == 'r'
    #   true
    # end
    arr[0] == 'r'
  end
end

def contain_a(array)
  #if array contains 'a'
  #loop through each array item and then loop through each letter of the item for 'a'
  #push array of item that is true
  a_array = []

  array.each do |arr|
    i = 0
    while i < arr.length
      if arr[i].include?('a')
        a_array << arr
      end #end if
      i += 1
    end #end while

  end #end array
  a_array
end

def first_wa(array)
  #use detect to return first true
  # wa_array = []

  array.detect do |arr|
    # if arr[0] == "w" && arr[1] == "a"
      # wa_array << arr
    # end
    arr[0] == "w" && arr[1] == "a"
  end

  # wa_array.first
end

def remove_non_strings(array)

  array.select do |arr|
    arr.class == String
  end
end

def count_elements(array)
  #count how many times something appears in the array
  #if v = v, count it then add it to the hash and remove the value and key

  dup_name = nil

  array.each do |key|
    key[:count] = 1
    key.each do |k, v|

      if dup_name == v || dup_name == nil
        dup_name = v #sets dup_name outside of loop
        key[:count] += 1
      end #end if

    end
  end

  array.uniq

end

def merge_data(array1, array2)

 #if name == details
 #name[motto_name] = details
 #start with array2 first

  # array2.each do |name_hash|
  #   name_hash.each do |name, data|
  #     array1.each do |hash|
  #       hash.each do |motto_name, details|
  #         if hash[:first_name] == name
  #           name_hash[name][motto_name] = details
  #         end
  #         # binding.pry
  #       end #hash
  #     end #array1
  #   end #name_hash
  # end #array2

  #  [{
  #    :awesomeness=>10,
  #    :first_name=>"blake",
  #    :height=>"74",
  #    :last_name=>"johnson",
  #    :motto=>"Have a koala..."
  #  }, {
  #    :first_name=>"ashley",
  #    :height=>60,
  #    :last_name=>"dubs",
  #    :motto=>"I dub thee, 'Lady Brett Ashley'."
  # }]

  #if key[:first_name] == name
  #key[detail_key] = detail_value
  array1.each do |key|
    array2.each do |name_hash|
      name_hash.each do |name, data|
        data.each do |detail_key, detail_value|
          if key[:first_name] == name
            key[detail_key] = detail_value
            # binding.pry
          end #end if
        end #data
      end #name_hash
    end #array2
  end #array1

  array1
end

def find_cool(array)
  array.select do |hash|
    hash[:temperature] === "cool"
  end #array
end

def organize_schools(array)

  # {
  #   "Chicago"=>["dev boot camp chicago"],
  #   "NYC"=>[
  #     "flatiron school bk",
  #     "flatiron school",
  #     "general assembly"
  #     ],
  #   "SF"=>[
  #     "dev boot camp",
  #     "Hack Reactor"
  #     ]
  # }
  new_hash = {}

  array.each do |school, location_hash|
    location_hash.each do |location, city|
      if !new_hash.has_key?(city)
        school_array = []
        school_array << school
        new_hash[city] = school_array
      else
        new_hash[city] << school
      end #end if
      # binding.pry
    end #location_hash
  end #array
  new_hash
end
