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

10.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
end
puts "10 Posts have been created"

9.times do |audit_log|
	AuditLog.create!(user_id: User.last.id, status: 0, start_date: (Date.today - 6.days))
end
puts "9 Audit logs have been created"


