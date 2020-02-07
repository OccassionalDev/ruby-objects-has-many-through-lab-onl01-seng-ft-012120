class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    save 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def songs 
    Song.all.select do |song|
      song.artist == self 
    end 
  end 
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end 
  
  def genres 
    self.songs.map{ |song| song.genre }
  end
  
end

def soemthing
  num = 8
  num += 7
  nil
end



puts soemthing