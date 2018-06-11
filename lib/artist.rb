class Artist
 @@all = []

 attr_accessor :name

 def initialize(name)
   @name = name
   @@all << self
 end

 def new_song(name, genre)
   Song.new(name, self, genre)
 end

 #Class Methods
 def self.all
   @@all
 end

 def songs
   Song.all.select {|song| song.artist == self}
 end

 def genres
   self.songs.collect {|genre| genre.genre}
 end

end
