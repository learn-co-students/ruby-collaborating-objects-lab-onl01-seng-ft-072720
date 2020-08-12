require 'pry'

class MP3Importer
    
attr_accessor :path

    def initialize(path)
        @path = path
    end

    def files
       files_arr =  Dir.entries(@path).select do |file| 
            file.end_with?(".mp3")
        end
    end

    def import(some_filename)
        Song.new_by_filename(some_filename)
    end


end
