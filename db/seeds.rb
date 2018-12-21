# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
	# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
	(0..1).each do |n|
		u = User.create(email:"client@inuscg.com",password:"123456",password_confirmation: "123456", firstname:"user_1",lastname:"inuscg",phone_number:"1234567890",role:"client",bod: Date.today - 365*30 , address: "207, narayn gardan", gender: "female", designation: "Software Engeer", state: "Gujarat", country: "India", pincode: "123456")
		puts"-----> #{u.email} <--client created-----"
		if u.save
			(1..2).each do |n|
				p = u.projects.create(name: "client_project_#{n}",description:"description descriptiondescription descriptiondescription descriptiondescription descriptiondescription descriptiondescription descriptiondescription descriptiondescription descriptiondescription description", created_by_id: u.id , created_by: u.role , deadline: Date.today + 365*4 , priority: "hight", status: "Working", total_hours: "200")
					puts"-----> #{p.name} <--created-----"
				p.save
				# (1..3).each do |n|		
				# 	t = p.tasks.create(name: "Where can I get some?", details: "Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?", status:"done", priority: "high", created_by_id: u.id , start_date: Date.today, end_date: Date.today + 10, created_by: u.role)
				# 	puts"-----> #{t.name} <--created-----"
				# 	(1..3).each do |n|		
				# 		c = t.comments.create(body: "test comments",user_id: u.id)
				# 		puts"-----> #{c.body} <--created-----"
				# 	end
				# end
			end
		end
	end
	(0..1).each do |n|
		u = User.create(email:"manager@inuscg.com",password:"123456",password_confirmation: "123456", firstname:"user_1",lastname:"inuscg",phone_number:"1234567890",role:"manager",bod: Date.today - 365*30 , address: "207, narayn gardan", gender: "female", designation: "Software Engeer", state: "Gujarat", country: "India", pincode: "123456")
		puts"-----> #{u.email} <-- manager created-----"
		if u.save
			(1..2).each do |n|
				p = u.projects.create(name: "manager_project_#{n}",description:"description descriptiondescription descriptiondescription descriptiondescription descriptiondescription descriptiondescription descriptiondescription descriptiondescription descriptiondescription description", created_by_id: u.id , created_by: u.role , deadline: Date.today + 365*4 , priority: "hight", status: "Working", total_hours: "200")
					puts"-----> #{p.name} <--created-----"
				if p.save
					(1..3).each do |n|		
						t = p.tasks.create(name: "Where can I get some?", details: "Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?", status:"done", priority: "high", created_by_id: u.id , start_date: Date.today, end_date: Date.today + 10, created_by: u.role)
						puts"-----> #{t.name} <--created-----"
						if t.save
							(1..3).each do |n|		
								c = t.comments.create(body: "test comments",user_id: u.id)
								puts"-----> #{c.body} <--created-----"
							end
						end
					end
				end
			end
		end
	end
	(1..2).each do |n|
		u = User.create(email:"employee_#{n}@inuscg.com",password:"123456",password_confirmation: "123456", firstname:"user_1",lastname:"inuscg",phone_number:"1234567890",role:"employee",bod: Date.today - 365*30 , address: "207, narayn gardan", gender: "female", designation: "Software Engeer", state: "Gujarat", country: "India", pincode: "123456")
		puts"-----> #{u.email} <--employee created-----"
		u.save
		# (1..3).each do |n|
		# 	p = u.projects.create(name: "client_project_#{n}",description:"description descriptiondescription descriptiondescription descriptiondescription descriptiondescription descriptiondescription descriptiondescription descriptiondescription descriptiondescription description", created_by_id: u.id , created_by: u.role , deadline: Date.today + 365*4 , priority: "hight", status: "Working", total_hours: "200")
		# 		puts"-----> #{p.name} <--created-----"
		# 	(1..3).each do |n|		
		# 		t = p.tasks.create(name: "Where can I get some?", details: "Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?Where can I get some?", status:"done", priority: "high", created_by_id: u.id , start_date: Date.today, end_date: Date.today + 10, created_by: u.role)
		# 		puts"-----> #{t.name} <--created-----"
		# 		(1..3).each do |n|		
		# 			c = t.comments.create(body: "test comments",user_id: u.id)
		# 			puts"-----> #{c.body} <--created-----"
		# 		end
		# 	end
		# end
	end
end
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')