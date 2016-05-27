
class Idea
    
    def set_character =(character)
        @character = character
    end
    
    def get_character
        return @character
    end

    def set_setting=(setting)
        @setting = setting
    end

    def get_setting
        return @setting
    end

end


class Story < Idea

    def set_time= (time)
        @time = time
    end

    def get_time
        return @time
    end
    
    def story_begin
        return "#{@time} #{@character} lived in a #{@setting} far, far away."

   end
end

my_story = Story.new
my_story.set_character = "Luke Skywalker"
my_story.set_setting = "galaxy"
my_story.set_time = "a long time ago"

puts my_story.story_begin
puts my_story.inspect 


