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


def puts(*args)
  args.each do |arg|
    #do some stuff that causes the terminal to display new lines of text
    #that text should be whatever the arg is
  end
  
  nil
  
end


puts 'asdf'