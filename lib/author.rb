class Author 
  
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name
    @posts = []
    
  end 
  
  def posts 
    @posts
  end 
  
  def add_post(post)
    @posts << post
    post.author = self
    @@all << self 
  
  end
  
  def add_post_by_title(post_title)
    posts = Post.new(post_title)
    posts.author = self
    @posts << posts
    @@all << self
  end 
  
  def self.post_count
    @@all.count 
  end 
  
end 