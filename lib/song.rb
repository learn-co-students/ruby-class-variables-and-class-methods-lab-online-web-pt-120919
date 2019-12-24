class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    artists = []
    @@artists.each do |artist|
      if !artists.include?(artist)
        artists << artist
      end
    end
    artists
  end
  
  def self.genres
    genres = []
    @@genres.each do |genre|
      if !genres.include?(genre)
        genres << genre
      end
    end
    genres
  end
  
  def self.genre_count
    genres = {}
    @@genres.each do |genre|
      if !genres[genre]
        genres[genre] = 1
      else
        genres[genre] += 1
      end
    end
    genres
  end
  
  def self.artist_count
    artists = {}
    @@artists.each do |artist|
      if !artists[artist]
        artists[artist] = 1
      else
        artists[artist] += 1
      end
    end
    artists
  end
end