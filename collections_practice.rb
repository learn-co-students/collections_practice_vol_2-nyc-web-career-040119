def begins_with_r(array)
    array.all? { |x| x.start_with?("r")} 
end 

def contain_a(array)
    all_with_letter = []
    array.each do |x| 
        if x.include?("a")
            all_with_letter << x
        end
    end 
    all_with_letter
end 


def first_wa(array)
    array.find do |word| 
       if word.class == String
        word.start_with?("wa")
       end
    end 
end 


def remove_non_strings(array)
    non_strings = []
    array.collect! do |item|
        if item.class == String
            non_strings << item
        end 
    end 
    non_strings
end 

def count_elements (array)
    single_element = array.uniq
    count_array = []
    single_element.each do |element|
        count_array << element.merge({:count => array.count(element)})
    end
    count_array
end 

def merge_data(keys,data)
    hash_array = []
    i = 0
    data.each do |hashes|
        hashes.each do |hashkey, hashvalue|
            hash_array << hashvalue.merge(keys[i]).sort.to_h
            i += 1
        end
    end
    hash_array
end

def find_cool(cool)
    hashes_with_cool = []
    cool.each do |hash|
        if hash.values.include?("cool")
            hashes_with_cool << hash
        end
    end
    hashes_with_cool
end 


def organize_schools(schools)
    organized_schools = []
    schools.each do |hashkey,hashvalue|
        organized_schools << {hashvalue.values.join => hashkey}
    end
    school_hashes = {}
        organized_schools.each do |keyz|
            keyz.each do |schoolkey,schoolvalue|
                if school_hashes[schoolkey].class == Array 
                    school_hashes[schoolkey].push(schoolvalue)
                else  
                    school_hashes[schoolkey] = []
                    school_hashes[schoolkey].push(schoolvalue)
                end
            end
        end
    school_hashes.sort.to_h
end 
