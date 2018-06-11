require 'pry'
class Song

  attr_accessor :name, :genre, :artist
  @@all = []

  def self.all
    @@all
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    unless artist.songs.include?(self)
       artist.songs << self
     end
     
    unless genre.songs.include?(self)
      genre.songs << self
    end

    @@all << self
  end

end
#binding.pry
