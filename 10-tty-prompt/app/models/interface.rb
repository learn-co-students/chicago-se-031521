class Interface

    attr_accessor :user
    attr_reader :prompt

    def initialize
        @prompt = TTY::Prompt.new
    end

    def welcome
        puts "hi there!"
        puts "welcome to my app"
    end

    def ask_for_login_or_register
        # puts "Would you like to login or register?"
        # answer = STDIN.gets.chomp
        # if answer == "login"
        #     # do some login logic
        #     login_helper
        # elsif answer == "register"
        #     # do some register login
        #     register_helper
        # else
        #     # display an warning message
        #     generic_warning_message
        # end

        prompt.select "Would you like to login or register?" do |menu|
            menu.choice "Login", -> { login_helper }
            menu.choice "Register", -> { register_helper }
        end 
    end

    def login_helper
        puts "typed login"
        @user = User.login_helper_class_method
    end

    def register_helper
        puts "typed register"
        @user = User.register_helper_class_method
    end

    def generic_warning_message
        puts "not login or register, try again"
    end

    def main_menu
        @user.reload
        system 'clear'
        sleep 2
        puts "welcome #{user.username}"
        prompt.select "What do you want to do?" do |menu|
            menu.choice "See all categories", -> { see_all_categories_helper }
            menu.choice "See my posts", -> { see_my_posts_helper }
            menu.choice "Create a post", -> { create_post_helper }
            menu.choice "Exit app", -> { puts "Goodbye" }
        end
    end

    def create_post_helper
        # Post.create(...)
    end

    def see_all_categories_helper
    end

    def see_my_posts_helper
        @user.display_posts
        main_menu
    end


    def run
        welcome
        ask_for_login_or_register
        main_menu
    end

end