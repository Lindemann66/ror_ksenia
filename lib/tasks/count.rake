namespace :count do
  desc 'Count all rb-files in project'
  task rb_files: :environment do
    a = Dir.glob('**/*.rb')
    puts a
    puts "#{a.count} ruby-files in project"
  end

  desc 'Count strings in all rb-files in project'
  task rb_strings: :environment do
    a = Dir.glob('**/*.rb')
    x = 0
    a.each do |path|
      File.foreach (path) do |line|
      x += 1
      end
    end
    puts "#{x} strings in all ruby-files in project"

  end
end
