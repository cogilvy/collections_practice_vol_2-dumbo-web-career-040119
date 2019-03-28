def begins_with_r(array)
  array.all? do |string|
    string.start_with?("r")
  end
end

def contain_a(array)
  array.select do |string|
    string.include?("a")
  end
end

def first_wa(array)
  array.collect do |element|
    element = element.to_s
    if element.start_with?("wa")
      return element
    end
  end
end

def remove_non_strings(array)
  array.delete_if {|element| !(element.is_a? String)}
end

def count_elements(array)
  array.group_by(&:itself).map do |key, value|
    key.merge(:count => value.length)
  end
end

def merge_data(keys, data)
  keys.each do |names|
    data.each do |hash|
      names.merge!(hash[names[:first_name]])
    end
  end
end

def find_cool(array)
  cool_array = []
  array.select do |hash|
    if hash.has_value?("cool")
      cool_array << hash
    end
  end
end

def organize_schools(hash)
  organized_hash = {}
  hash.each do |school, location|
    location.each do |abbreviation, city|
      if organized_hash[city] == nil
        organized_hash[city] = [school]
      else
        organized_hash[city] << school
      end
    end
  end
  organized_hash
end
