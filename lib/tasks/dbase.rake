namespace :dbase do
  desc 'Seed database'
  task seed: :environment do
    10.times do |i|
      User.create(name: "User_#{i}", email: "mail#{i}@mail.ru")
      Post.create(title:"Title #{i}", body:"This is post number #{i}. Its minimum length is 50 characters. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.", user_id: "#{rand(1..10)}", visible: true)
      Comment.create(body:"This is comment number #{i}. Its minimum length is 5 characters.", user_id: "#{rand(1..10)}", post_id: "#{rand(1..10)}", visible: true)
    end
  end
end
