class Blog
    
    @@all_blog_posts = []
    @@num_blog_posts = 0
    
    def self.all
    @@all_blog_posts
end


def self.publish
@@all_blog_posts.each do |post|
    puts "Title:\n #{post.title}"
    puts "Body:\n #{post.content}"
    puts "Publish Date:\n #{post.publish_date}"
end
end

end


class BlogPost < Blog
    
    def self.create
    post = new
    puts "Name your blog post:"
    post.title = gets.chomp
    puts "Your blog post content:"
    post.content = gets.chomp
    post.publish_date = Time.now
    post.save
    puts "Do you want to publish a post? [Y/N]"
    puts if gets.chomp.upcase == 'Y'

end

def title
    @title
end

def set_title=(title)
    @title = title
end

def publish_date
    @publish_date
end

def set_publish_date=(publish_date)
    @publish_date = publish_date
end

def content
    @content
end

def set_content=(content)
    @content = content
end

def save
    BlogPost.add(self)
end

end

BlogPost.create
all_blog_posts = BlogPost.all
puts all_blog_posts.inspect
BlogPost.publish