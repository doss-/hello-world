
class MegaGreeter
 attr_accessor :names

 def initialize(names = "World")
  @names = names
 end

 def say_hi
  if @names.nil?
   puts "..."
  elsif @names.respond_to?("each")
   # as per ruby is not typed language, we need to ensure what type of object we have before iteract with it
   # in this case - if it supports method "each" means it is iterable collection, so we can iterate 
   @names.each do |name|
    puts "Hello #{name.to_s.capitalize}!"
   end
  else
   #if here, means @names is not a collection, presumably a string
   puts "Hello #{@names.to_s.capitalize}!"
  end
 end

 def say_bye
  if @names.nil?
   puts "..."
  elsif @names.respond_to?("join")
   puts "Goodbye #{@names.join(", ")}. Come back soon!"
  else
   puts "Goodbye #{@names.capitalize}. Come back soon!"
  end
 end
end

if __FILE__ == $0
 mg = MegaGreeter.new
 mg.say_hi
 mg.say_bye

 mg.names="zeke"
 mg.say_hi
 mg.say_bye

 mg.names = ["albert", "brenda", "charles", "dave", "engelbert"]
 mg.say_hi
 mg.say_bye

 mg.names = nil
 mg.say_hi
 mg.say_bye
end
