namespace :dbase do
  desc 'Seed database'
  task seed: :environment do
    10.times do
      User.create(name: "#{SecureRandom.hex(8)}", email: "#{SecureRandom.hex(4)}@mail.ru")
    end
    20.times do
      Post.create(title:"Title with random uniq title #{SecureRandom.hex(6)}", body:"This is post number. Its minimum length is 50 characters. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.", user: "#{User.order("RANDOM()").first}", visible: true)
    end
    30.times do
      Comment.create(body:"This is comment. Its minimum length is 5 characters.", user: "#{User.order("RANDOM()").first}", post: "#{Post.order("RANDOM()").first}", visible: true)
    end
  end
end
