class song
  attr_accessor :name, artist, genre
  
  @@song_count = 0
  
  def initialize 
    @@song_count += 1
  end
  
  def artist (artist)
    @artist_name = artist
    
    @@ artist_count =+ 1
    
  end
  
  def genre
    @genre = genre
  end
end