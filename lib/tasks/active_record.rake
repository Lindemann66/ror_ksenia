namespace :a_rec do
  desc 'Get all posts by moderator'
  task posts: :environment do
    moderators = User.where(moderator: true)
    Post.where(user: moderators).each do |post|
     puts "Post №#{post.id} by #{post.user.name.capitalize} | #{post.title} "
    end
  end
end
