require "pry"

def begins_with_r(tools)
  tools.each do |tool|
    if !tool.start_with?("r")
     return false
    end
  end
return true   
end

def contain_a(array)
  new_array = []
  array.each do |word|
    if word.include?("a")
      new_array.push(word)
    end
  end
new_array
end

def first_wa(array)
  array.find do |word|
    word[0,2] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |x|
    x.class != String
  end
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0 
      array.each do |new|
        if new[:name] == hash[:name]
        hash[:count] += 1 
        end
      end
    end
  
  array.uniq
  end

#  let(:keys) { [ { :first_name => "blake", :motto => "Have a koala-ty day" }, {  :first_name => "ashley",  :motto => "I dub thee,'Lady Brett Ashley'." } ] }

#  let(:data) { [  { "blake" => { :awesomeness => 10, :height => "74", :last_name => "johnson" } "ashley" => {  :awesomeness => 9,  :height => 60, :last_name => "dubs" } } ]

# let(:merged_data) {[ { :first_name => "blake",:awesomeness => 10, :height => "74",:last_name => "johnson", :motto => "Have a koala-ty day!" }, {  :first_name => "ashley",  :awesomeness => 9,  :height => 60, :last_name => "dubs", :motto => "I dub thee, 'Lady Brett Ashley'." }] }

def merge_data(array_1, array_2)
  array_1.each do |hash|
    name = hash[:first_name]
  array_2.each do |data|
    if data.keys.include?(name)
      data[name].each do |attribute, val|
        hash[attribute] = val
      end
    end
  end
  end

keys
end

def find_cool(cool)
  cool.select do |hash|
    hash[:temperature] == "cool"
  end
end

def organize_schools(schools)
  new_hash= {}
  schools.each do |school, loc_hash|
    city = loc_hash[:location]
    if !new_hash[city]
      new_hash[city] = []
    end
    if !new_hash[city].include?(school)
      new_hash[city].push(school)
    end
  end
  
new_hash
end
