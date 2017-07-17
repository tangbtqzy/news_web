if User.count == 0
  ["admin", "user1"].each do |user_name|
    user = User.new
    user.email = "#{user_name}@example.com"
    user.name = user_name
    user.password = "111111"
    if user.save!
      puts "#{user_name} init success!"
    else
      puts "#{user_name} init failure!"
    end
  end
end

if Article.count == 0
  article_index = 0
  100.times{
  	article_index += 1
    Article.new do |a|
      a.name = "The #{article_index} article"
      a.sub_title = "The #{article_index} sub_title"
      a.content = "The #{article_index} content"
      a.description = "The #{article_index} description"
      result = a.save!
      puts " Article initalize #{result}."
    end
  }
else
	Article.delete_all
end