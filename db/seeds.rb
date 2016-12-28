@employee = Employee.create(email: "test@test.com", 
										password: "asdfasdf", 
										password_confirmation: "asdfasdf", 
										first_name: "Jon", 
										last_name: "Snow",
										phone: "867049510")

puts "1 Employee created"

AdminUser.create(email: "admintest@test.com", 
								password: "asdfasdf", 
								password_confirmation: "asdfasdf", 
								first_name: "Admin", 
								last_name: "Adam",
								phone: "867049510")

puts "1 Admin User created"

	AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 6.days))
	AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 13.days))
	AuditLog.create!(user_id: @employee.id, status: 0, start_date: (Date.today - 20.days))
# end
puts "3 Audit logs have been created"

20.times do |post|
	Post.create!(date: Date.today, rationale: "#{post} Tote bag hot chicken echo park irony mumblecore blue bottle
	 raw denim prism slow-carb. Pinterest ennui trust fund drinking vinegar, normcore tumeric whatever jianbing kogi 
	 activated charcoal. Celiac gochujang bicycle rights cardigan, everyday carry umami ethical stumptown migas helvetica 
	 pinterest iPhone yuccie. Literally viral cardigan enamel pin whatever", user_id: @employee.id, overtime_request: 2.5)
end
puts "20 Posts have been created"



