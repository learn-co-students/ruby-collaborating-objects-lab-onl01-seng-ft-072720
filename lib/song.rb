class Song

    attr_accessor :name, :artist
    
    @@all = []
    
      def initialize(name)
        @name = name
        @@all << self
      end
    
      def self.all
        @@all
      end
    
      def self.new_by_filename(filename)
        split_file = filename.split(" - ")
        song_name = split_file[1]
        new_song = self.new(song_name)
        artist_new = Artist.new(split_file[0])
        new_song.artist = artist_new
        new_song
      end
    
      def artist_name=(name)
      self.artist = Artist.find_or_create_by_name(name)
      end
    end
