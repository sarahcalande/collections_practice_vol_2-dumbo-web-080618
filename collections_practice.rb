def begins_with_r(array)
  array.all? do |word|
  word[0] == "r"
end
end

def contain_a(array)
  array.select do |word|
  word.include?('a')
end
end

def first_wa(array)
  array.find do |word|
  word[0..1] == "wa"
end
end

def remove_non_strings(array)
  array.delete_if { |obj| !(obj.is_a? String) }
end

def count_elements(array)
  a = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
a.group_by(&:itself)                  
 .map{|k, v| k.merge(count: v.length)}
end

def merge_data(arr1, arr2)
	merged =[]
	arr1.each_index do |i|
		arr2[0].keys.each do |name|
			merged << arr1[i].merge(arr2[0][name]) if name == arr1[i][:first_name]
		end
	end
	merged
end


def find_cool(array)
  array.select do |item| 
    item.has_value?('cool')
  end
end

def organize_schools(array)
array.each_with_object({}) do |(name, data), res|
  (res[data[:location]] ||= []) << name
end
end