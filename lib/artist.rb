class Artist 
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def add_song(song)
    song.artist = self 
  end 
  
  def songs 
    Song.all.select do |song|
      song.artist == self 
    end 
  end 
  
   def self.find_or_create_by_name(name) 
     artist_name = self.all.find {|one_artist| one_artist.name == name}
       if artist_name
         artist_name
       else 
         self.new(name)
       end 
   end 

   def print_songs
     self.songs.each {|song| puts song.name}
   end
   
end 












