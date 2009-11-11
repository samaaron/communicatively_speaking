begin
  require 'rainbow'
rescue LoadError
  puts "Unable to find rainbow. Try gem install rainbow"
end

desc "Create a new post for today"
task :post do
  puts ""
  puts "==================="
  puts "Creating a new post"
  puts "==================="
  puts ""
  puts "What is the title of the post?"
  print "> "
  title = STDIN::gets

  file_friendly_title = title.strip.gsub(/[^a-zA-Z0-9]/, '-').gsub(/-+/, '-').gsub(/\A-*/, '').gsub(/-*\Z/, '')

  date = Time.now
  filename = "#{date.strftime("%Y-%m-%d-#{file_friendly_title}.markdown")}"
  puts "date.day: #{date.day}"
  path = "_posts/#{filename}"
  File.open(path, 'w') do |file|
    file.puts "---"
    file.puts "title: #{title}"
    file.puts "layout: blog"
    file.puts "---"
    file.puts ""
  end

  puts "The following post has been created for you: "
  puts path
end
