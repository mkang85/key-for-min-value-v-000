# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  lowest_val = nil
  lowest_key = nil
  name_hash.each do |k, v|
    if lowest_val == nil || v < lowest_val
      lowest_val = v
      lowest_key = k
    end
  end
  lowest_key
end
