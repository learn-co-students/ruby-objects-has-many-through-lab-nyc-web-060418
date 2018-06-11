require 'pry'
class Genre

  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def new_song(name, artist)
    Song.new(name, artist, self)
  end

  def artists
    songs.map do |song|
      song.artist
    end
  end
end

# binding.pry
