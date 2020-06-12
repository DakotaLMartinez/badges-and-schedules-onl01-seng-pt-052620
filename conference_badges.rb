# Write your code here.
# def my_method(my_array) 
#   return "nothing here" if my_array.empty?
#   my_array.each do |item|
#     puts item 
#   end 
# end
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
  # badge_array = []
  # name_array.each do |name|
  #   badge_array << badge_maker(name) 
  # end
  # badge_array
  name_array.collect do |name|
    badge_maker(name)
  end
  # badge_array == name_array
end

def assign_rooms(name_array)
  name_array.collect.with_index(1) do |name, index|
    "Hello, #{name}! You'll be assigned to room #{index}!"
  end
end

def printer(name_array)
  batch_badge_creator(name_array).each {|badge_text| puts badge_text }
  assign_rooms(name_array).each { |room| puts room }
end
