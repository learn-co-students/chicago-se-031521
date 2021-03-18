class Tweet

    attr_reader :message, :user

    @@all_tweets = []

    def initialize(message_arg, user_arg)
        @message = message_arg
        @user = user_arg

        @@all_tweets << self
    end

    def self.all
        @@all_tweets
    end

    def username
        self.user.username ## explict use of self
        # user.username ## implict use of self
        # @user.username ## instance variable directly
    end

end