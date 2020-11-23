require 'pry'
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

    def songs
        # binding.pry
        Song.all.select {|song| song.artist == self}
        # return songs.artist
    end 

    def add_song(song)
        song.artist = self
        # binding.pry
    end 

    def self.find_or_create_by_name(name)
        if self.all.find {|artist| artist.name == name}
           self.all.find {|artist| artist.name == name}
        # binding.pry 
        else
            Artist.new(name)
        end 

    end 

    def print_songs
        self.songs.each {|song| puts song.name}

    end 
end 






# require 'pry'
# class Artist
#     attr_accessor :name, :songs
#     @@all = []
#     # @@songs = []
#     def initialize (name)
#         @name=name
#         @songs = []
#         @@all << self 
#     end 

#     def songs
#         # binding.pry
#     #    Song.select 
#         # Song.all
#         # @@all
#         Song.all.select {|song| song.artist == self}
#     end

#     def self.all
#         @@all 
#     end 

#     def add_song(song)
#         song.artist = self
#         # binding.pry
#     end 

#     def self.find_or_create_by_name(song_name)
#         # binding.pry
#         if @@all.none?{|artist| 
#         # binding.pry
#         artist.name == song_name}
        
#           self.new(song_name)
#         else
#           @@all.detect do |artist|
#             artist.name == song_name
#           end
#         end
#         # binding.pry
#     end

#     def print_songs
#         songs.each {|song| puts song.name}
#     end 
#     # binding.pry
# end 