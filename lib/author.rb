
class Author

  attr_accessor :name, :post

  @@post_count = 0

  # ALL = []
  #
  # def self.all
  #   ALL
  # end
  #
  def self.post_count
    @@post_count
  end

  def initialize(name)
    @name = name
    # ALL << self
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @@post_count = @@post_count + 1
    @posts << post
    post.author = self
  end

  def add_post_by_title(post_name)
    @@post_count = @@post_count + 1
    post = Post.new(post_name)
    @posts << post
    post.author = self
  end

end
