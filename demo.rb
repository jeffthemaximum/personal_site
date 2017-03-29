def push_to_array(original_array, new_item)
  # I think this is my best

  # make new_array that's one item longer than original
  original_length = original_array.length
  new_array = [nil] * (original_length + 1)
  # add all original items to new_list
  original_array.each_with_index do |val, idx|
    new_array[idx] = val
  end  
  # make new_item the last element of new_list
  new_array[original_length] = new_item
  return new_array
end

def push_to_array2(original_array, new_item)
  # will this one work all the time? why or why not?
  # hint here: http://ruby-doc.org/core-2.4.0/Hash.html

  original_length = original_array.length
  # stick all array items in a hash
  my_hash = {}
  original_array.each_with_index do |val, idx|
    my_hash[val] = idx
  end
  # add new item to dictionary
  my_hash[new_item] = original_length
  # return just the keys from the dictionary as a list
  return my_hash.keys
end


def push_to_array3(original_list, new_item)
  # This one is probably the cleanest, most memory efficient,
  # and fastest. Do you agree?
  # But I still like def push_to_array better
  # what about you?
  length = original_list.length
  original_list[length] = new_item
  return original_list
end

my_array = ["The", "earth", "revolves", "around", "sun"]

puts push_to_array3(my_array, "today")