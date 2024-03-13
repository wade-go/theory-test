# Cau 5: Write a function: Given an array of numbers, return the array with only even numbers
def even_number(array)
  array.select { |n| n.even?}
end

p even_number([1,2,3,4,5,6,7])
# Cau 6: Write a function: Given an array of hash, each hash includes the name and age of an user. Return a group of names by age.

people_array  = [{age:26, name: 'john'},{age:28, name: 'charlie'},{age:26, name: 'peter'},{age:28, name: 'sophie'}]

def group_by_age(array)
  hash = {}
  array.each do |user|
    hash[user[:age]] ||= []
  end
  array.each do |user|
    hash[user[:age]] << user[:name]
  end
  result_array = Array.new
  hash.each do |k,v|
    temp = {age: k, names: v}
    result_array << temp
  end
  return result_array
end

p  group_by_age(people_array)
