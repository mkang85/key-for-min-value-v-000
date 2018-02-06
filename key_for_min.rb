# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  lowest_val = nil
  lowest_key = nil
  name_hash.each do |k, v|
    if lowest_val == nil || v < lowest_val #becauase of this conditional, we need lowest_val = v
      lowest_val = v
      lowest_key = k
    end
  end
  lowest_key
end


#for example, first time we do it, because
#lowest_val == nil || v < lowest_val
# because of that first part of the conditional, this will set hte values, of "blake: 10"
# then, we go to the next one in the hash which is "ashley:50", but let's say it's "ashley:10"
# if that's the case, we'll hit our conditional again, and then the nil doesn't apply
# but because v is lower than the 10 we assigned earlier, we will now set up a new v an  new lowest_key.
