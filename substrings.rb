# frozen_string_literal: true

# to search words in the dictionaary and return frequency counts as hash

def substrings(string, dictionary)
  result_array = Array.new(0)
  add_array = Array.new(0)
  string_array = string.downcase.split(/[?.!] |[?.!]| /)
  string_array.each_with_index do |e, _i|
    add_array = dictionary.select do |v|
      e.downcase.include? v
    end
    result_array.push(add_array)
  end
  result_array.flatten.group_by(&:itself).transform_values!(&:size).sort
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

p substrings("Howdy partner, sit down! How's it going?", dictionary)
