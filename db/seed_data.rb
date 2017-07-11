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