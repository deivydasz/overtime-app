@user = User.create(email: "test@test.com", 
										password: "asdfasdf", 
										password_confirmation: "asdfasdf", 
										first_name: "Jon", 
										last_name: "Snow",
										phone: "8867049510")

puts "1 User created"

AdminUser.create(email: "admintest@test.com", 
								password: "asdfasdf", 
								password_confirmation: "asdfasdf", 
								first_name: "Admin", 
								last_name: "Adam",
								phone: "8867049510")

puts "1 Admin User created"

20.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} Tote bag hot chicken echo park irony mumblecore blue bottle
	 raw denim prism slow-carb. Pinterest ennui trust fund drinking vinegar, normcore tumeric whatever jianbing kogi 
	 activated charcoal. Celiac gochujang bicycle rights cardigan, everyday carry umami ethical stumptown migas helvetica 
	 pinterest iPhone yuccie. Literally viral cardigan enamel pin whatever", user_id: @user.id, overtime_request: 2.5)
end
puts "20 Posts have been created"

18.times do |audit_log|
	AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end
puts "18 Audit logs have been created"


