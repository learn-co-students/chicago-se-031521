# Seed Your Database
User.destroy_all
Category.destroy_all
Post.destroy_all
Comment.destroy_all

User.reset_pk_sequence
Category.reset_pk_sequence
Post.reset_pk_sequence
Comment.reset_pk_sequence

sonic = User.create(username: "Sonic", password: "abc123")
amy = User.create(username: "Amy", password: "abc123")
tails = User.create(username: "Tails", password: "abc123")

10.times do 
    Category.create(name: Faker::Game.title)
end

p1 = Post.create(user_id: sonic.id, category_id: Category.all.sample.id, title: "Sonic's First Post", body: Faker::Lorem.paragraph)
p2 = Post.create(user_id: sonic.id, category_id: Category.all.sample.id, title: "Sonic's Second Post", body: Faker::Lorem.paragraph)
p3 = Post.create(user_id: amy.id, category_id: Category.all.sample.id, title: "Amy's First Post", body: Faker::Lorem.paragraph)




