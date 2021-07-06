def begins_with_r(tools)
  tools.each do |tool|
    if !tool.start_with?("r")
      return false
    end
  end
  return true
end

def contain_a(array)
  fonz_says_a = []
  array.each do |word|
    if word.include?("a")
      fonz_says_a.push(word)
    end
  end
  fonz_says_a
end

def first_wa(array)
  wawa = []
  array.each do |word|
    if word.to_s.start_with?("wa")
      wawa.push(word)
    end
  end
  return wawa[0]
end

def remove_non_strings(array)
  string_theory = []
  array.each do |item|
    if item.class == String
      string_theory.push(item)
    end
  end
  string_theory
end

def count_elements(array)
  count_drac = []
  array.uniq.each do |item|
    item.each do |key, value|
      count_drac.push({count: array.count(item), name: value})
    end
  end
  return count_drac
end

def merge_data(keys, data)
  #puts keys = [{:first_name=>"blake", :motto=>"Have a koala-ty day!"},{:first_name=>"ashley", :motto=>"I dub thee, 'Lady Brett Ashley'."}]
  #puts data = {"blake"=>{:awesomeness=>10, :height=>"74", :last_name=>"johnson"}, "ashley"=>...}
  keys.each do |key|
    firname = key[:first_name]
    data.each do |item|
      if item.keys.include?(firname)
        item[firname].each do |att, info|
          key[att] = info
        end
      end
    end
  end
  keys
end

def find_cool(array)
  cool_joe = []
  array.each do |item|
    #puts item = [{:name=>"ashley", :temperature=>"sort of cool"}, {:name=>"blake", :temperature=>"cool"}]
    item.each do |key, value|
      if value == "cool"
        cool_joe.push(item)
      end
    end
  end
  return cool_joe
end

def organize_schools(array)
  sorted_hash = {}
  array.each do |item, value|
    #puts item = {"Hack Reactor"=>{:location=>"SF"}, "dev boot camp"=>{:location=>"SF"}, "dev boot camp chicago"=>{:lo...:location=>"NYC"}, "flatiron school bk"=>{:location=...
    #value = locations
    #basically, same setup as programming languages lab
    site = value[:location]
    if !sorted_hash[site]
      sorted_hash[site] = []
    end
    if !sorted_hash[site].include?(item)
      sorted_hash[site] << item
    end
  end
  sorted_hash
end
