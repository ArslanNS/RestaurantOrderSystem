world = "Earth"

puts ("Hello other " + world)
print ("Hello " + world)

puts ("Hello another " + world.downcase)

puts world.include? "a"

puts world[0]
puts world[0,3]
puts world.index("h")

num = 5
otherNum = num/2
puts ("num/2 : " + otherNum.to_s)

print ">"
thing = gets
puts thing

array = Array["this", 1, true]
puts array[0,2]

huh = Array.new
huh[5] = "test"
puts huh

people = Array["Bob", "Andy", "Nobody"]
puts people.sort()

hash = {
    "1" => "one",
    :other => "two",
    3 => "three"
}

puts hash["1"]
puts hash[:other]
puts hash[3]

def testing(one, two="123")
  puts "test"
  puts one
  puts two
  return one
end
puts testing("testing")

if huh[5] == "test"
  puts "again"
end

def max(one,two,three)
  if one >= two and one >= three
    return one
  elsif two >= one and two >= three
    return two
  end
  return three
end

puts max(2,4,6)


def test(num)
  case num
  when "1"
    puts "one"
  when "2"
    puts "two"
  when "3"
    puts "three"
  else
    puts("none")
  end
end

test("2")
test("13")

index = 1
while index <= 5
  test(index.to_s)
  index += 1
end

people.each do |person|
  puts person
end

#this is a line
=begin
these
are
many
lines
=end

File.open("text.txt", "r") do |file|
  puts file.read()
end

File.open("text.txt", "a") do |file|
  file.write("anothe rline")
end