class User < ActiveRecord::Base
    has_many :posts
    has_many :categories, through: :posts

    # has_many :comments
    # has_many :posts, through: :comments

    def self.login_helper_class_method
        puts "What is your username?"
        username = STDIN.gets.chomp
        puts "What is your password?"
        password = STDIN.gets.chomp
        user_instance = User.find_by({username: username, password: password})

        until user_instance
            puts "incorrect username or password"
            sleep 1
            system 'clear'
            user_instance = User.login_helper_class_method
        end

        user_instance
    end

    def self.register_helper_class_method
        puts "What is your username?"
        username = STDIN.gets.chomp
        puts "What is your password?"
        password = STDIN.gets.chomp
        user_instance = User.create({username: username, password: password})        
    end

    def display_posts
        if posts.length > 0

            array_of_hashes = posts.map do |post|
                { post.title => post.id }
            end

            post_id = TTY::Prompt.new.select("What post would you like to see?", array_of_hashes)
            puts "You chose post with ID of #{post_id}"
        else 
            puts "Sorry you don't have any posts to display!"
        end
    end

end