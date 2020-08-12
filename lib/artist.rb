require 'pry'

class Artist

attr_accessor :name, :songs

@@all = []

    def initialize(name)
        @name = name
        @@all << self
        @songs = []
    end
    
    def self.all
        @@all
    end

    def add_song(song)
        self.songs << song
    end

    def self.find_or_create_by_name(name)
    artist_check = self.all.find do |artist_inst| 
            artist_inst.name == name
        end
        if artist_check
            artist_check
        else
            self.new(name)
        end
    end

    def print_songs
        self.songs.each {|song| puts song.name}
    end


end