require 'pry'
class Artist 
  attr_accessor :name, :songs 
  @@all = [] 
  def initialize(name)
    @name = name 
    @songs = []
    @@all.push(self)
  end 
  
  def self.all 
    @@all
  end
  
     def songs
  songs = Song.all.select {|song| song.artist == self}
  #binding.pry 
  end
  

   def add_song(song)
     song.artist = self 
    @songs.push(song)
  end
  
  # def add_song(song)
  # song.artist = self
# end
  
 # def self.find_or_create_by_name(name)
   # binding.pry 
  #  @@all.each do |i|
   #   
   #   if i == self then return self 
  #  else
  #    @name = name 
  #    @@all.push(self)
  #   a = self
 #    return a 
 #   end
 #   
 # end
#end
  
  def save
    @@all.push(self)
  end
  
   # def self.find_or_create_by_name(name)
   # if self.find(name)
  #    self.find(name)
  #  else
  #    self.create(name)
  #  end
#  end
  
  
  def self.find_or_create_by_name(name)
        if @@all.detect{|i| i.name == name}
          @@all.detect{|i| i.name == name}
    else
      self.new(name)
      # self.name
    end
  end
  
  
  def self.find(name)
    self.all.detect { |artist| artist.name == name}
  end

  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end
  
 # def print_songs
  #  a = songs
  #  puts a 
  #end
    
     def print_songs
    puts @songs.collect {|song| song.name}
  end

  
end