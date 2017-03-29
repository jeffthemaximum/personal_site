my_array = ["The", "earth", "revolves", "around", "sun"]


def concat_array(original_array, other_array)
  # who wants to try to implement this?
  # the challenge is to implement it without using
  # the .push(), .concat(), .insert(), and .reverse()
  # built-in methods!
end


def insert_at_position(index, original_list)
  # who wants to try to implement this?
  # the challenge is to implement it without using
  # the .push(), .concat(), .insert(), and .reverse()
  # built-in methods!
end


def reverse_list(original_list)
  # who wants to try to implement this?
  # the challenge is to implement it without using
  # the .push(), .concat(), .insert(), and .reverse()
  # built-in methods!
end


# Below are my examples for 3 different ways to implement the .push()
# method. You can see how I've implemented .push(), and try to use my 
# strategies. Try to come up with three ways to implement your method.


def push_to_array_jeff(original_array, new_item)
  # I think this is my best

  # make new_array that's one item longer than original
  original_length = original_array.length
  new_array = [nil] * (original_length + 1)
  # add all original items to new_array
  original_array.each_with_index do |val, idx|
    new_array[idx] = val
  end  
  # make new_item the last element of new_array
  new_array[original_length] = new_item
  return new_array
end

def push_to_array_jeff2(original_array, new_item)
  # will this one work all the time? why or why not?
  # hint here: http://ruby-doc.org/core-2.4.0/Hash.html

  original_length = original_array.length
  # stick all array items in a hash
  my_hash = {}
  original_array.each_with_index do |val, idx|
    my_hash[val] = idx
  end
  # add new item to hash
  my_hash[new_item] = original_length
  # return just the keys from the hash as an array
  return my_hash.keys
end


def push_to_array_jeff3(original_array, new_item)
  # This one is probably the cleanest, most memory efficient,
  # and fastest. Do you agree?
  # But I still like def push_to_array_jeff better
  # what about you?
  length = original_array.length
  original_array[length] = new_item
  return original_array
end


puts my_array
puts push_to_array_jeff(my_array, "jeff")
puts push_to_array_jeff(my_array, ["maxim", "is", "cool"])
# add a print statement down here to test your code