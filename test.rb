# puts "hello world"

def sayGoodnight(name)
  result = "Goodnight, #{name}"
  return result
end


puts sayGoodnight 'test'


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

song1 = Song.new('break','taylor',100)
song2 = Song.new('done','Biever',200)

puts song1

puts song2


class KarokeSong < Song

  @@count=0

  attr_reader :name

  def initialize(name,artist,duration,lyrics)
    super(name,artist,duration)
    @lyrics= lyrics
    @@count+=1
  end

  def to_s
    return "karoke "+ super + " #{@lyrics}"
  end

  def count
    return @@count
  end
end

k1= KarokeSong.new('break','taylor',100,'lyrics')
k2= KarokeSong.new('break2','taylor2',1200,'lyrics2')

if k1.name == nil
  puts "is null"
else
  puts k1.name
end


puts k1
puts k1.count

puts k2

puts k1.count
puts k2.count


class Logger

  @@logger=nil

  attr_reader :logMessage
  attr_writer :logMessage
  private_class_method :new

  public
    def initialize()
      @logMessage = 'test3'
    end
    def Logger.create
      @@logger = new unless @@logger
      @@logger
    end

end


l = Logger.create
puts l.logMessage

l.logMessage='new message'
puts l.logMessage


l2 = Logger.create
puts l2.logMessage
