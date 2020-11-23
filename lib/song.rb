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

    def self.new_by_filename(file_name)
        song = file_name.split(" - ")[1]
        artist = file_name.split(" - ")[0]
        new_song = self.new(song)
        new_song.artist_name = artist
        new_song
        # binding.pry
      end

    def artist_name=(artist)

        the_artist = Artist.find_or_create_by_name(artist)

        self.artist = the_artist
    end

end 
# class Song 
#     attr_accessor :name, :artist
#     @@all = []
#     def initialize (name)
#         @name = name 
#         @artist 
#         @@all << self
#     end 

#     def self.all
#         @@all
#     end 

#     def self.new_by_filename(file)
#         array = file.split (' - ')
#         song = Song.new(array[1])
#         song.artist = Artist.find_or_create_by_name(array[0])
#         song
#         # binding.pry
#         #At line 16, were setting something equal to a new instance of Song.
#         #At the index of 1, were changing the ...
#         #song.artist (instance on the left, artist on the right), we are grabbing 
#         #that specific song that is attached to the artist
#         #Were setting the index=[0] because were invoking the entire instance of Artist
#     end

#     # def add_song(song)
#     #     @songs << song
#     # end

#     def artist_name
        
#     end 
# end 