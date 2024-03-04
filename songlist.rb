class Song
  def initialize(name,artist,duration)
     @name = name
     @artist= artist
     @duration= duration
  end
  def to_s
     return "Song: #{@name} #{@artist} #{@duration}"
  end
end

class Songlist
  def initialize
    @songs=[]
  end

  def append(song)
    @songs.push(song)
    self
  end

  def [](key)
    if key.kind_of?(Integer)
      @songs[key]
    end
  end

  def length
    return @songs.length
  end

  def each(&block)
    @songs.each(&block)
  end
end

songs = Songlist.new()
puts songs
puts songs.append(Song.new('test1','bro',100))
puts songs.append(Song.new('test2','bro',100))

# puts songs[0]

# for s in 0...songs.length
#   puts songs[s]
# end

songs.each {|song| puts song}

for s in songs
  puts s
end

# If the last parameter in a method definition is prefixed with an ampersand (such as &action),
# Ruby looks for a code block whenever that method is called.
# That code block is converted to an object of class Proc and assigned to the parameter.
# You can then treat the parameter as any other variable

#Closure


def nTimes(aThing)
  return proc { |n| aThing * n }
end

p1 = nTimes(23)
puts p1.call(3)
puts p1.call(4)
p2 = nTimes("Hello ")
puts p2.call(3)



def five(a, b, c, d, e)
  "I was passed #{a} #{b} #{c} #{d} #{e}"
end

puts five(*(10..14).to_a)


def createSearch(params)
   puts params[:genre]
end

createSearch({'genre':'jazz','lyrics':'how is it?'})


def divide(a, b)
  begin
    result = a / b
  rescue ZeroDivisionError => e
    puts "Error: #{e.message}"
    result = nil
  else
    puts result
  end
  return result
end

divide(1,0)
divide(5,2)

#for custom exceptions - use catch and throw
