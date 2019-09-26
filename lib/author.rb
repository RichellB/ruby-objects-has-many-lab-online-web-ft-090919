class Author 
  attr_accessor :title
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def add_post(post)
  ##  @songs << song
    post.author = self 
  end 
  
  def add_post_by_title(title)
    post = Post.new(title)
    add_post(post)
  end
  
  def self.all 
    @@all 
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end 
  
  def self.song_count 
    Song.all.count 
  end
  
end