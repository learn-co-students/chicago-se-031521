class User

    attr_reader :username
    attr_accessor :bio

    def initialize(username_arg, bio_arg)
        @username = username_arg
        @bio = bio_arg
    end

    def tweets
        Tweet.all.select { |tweet| tweet.user == self }
    end

    def post_tweet(message_arg)
        Tweet.new(message_arg, self)
    end
end