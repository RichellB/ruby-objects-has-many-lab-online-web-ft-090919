class Song 
  attr_accessor :name, :artist 
  
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
  
  def author_name
    self.author.name if author
  end 
end 
