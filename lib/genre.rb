require 'pry'

class Genre

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|song| song.genre = self}
  end

  def artists
    songs = self.songs
    songs.collect {|song| song.artist}
  end

end
