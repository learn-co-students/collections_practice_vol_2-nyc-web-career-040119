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
  #separate array for v
  #if doesn't have key create key, if has key, then + 1
  #compare the new hash with old hash
  #!key[v] = key[v]

  array.each do |key|
    key.each do |k, v|
      binding.pry
    end
  end

  # count_hash.each do |k, v|
  #   puts "#{k} appears #{v} times"
  # end

end
