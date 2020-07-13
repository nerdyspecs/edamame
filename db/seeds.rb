# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# create 1 admin, 2 employer, 3 customers(2+1)
if User.all.empty?

	a = User.create(
		:name => "Admin1",
		:email => "admin@email.com",
		:company => "Edamame",
		:role => 0,
		:password =>"admin123")

	employer1 = User.create(
		:name => "Employer1",
		:email => "employer1@email.com",
		:company => "Edamame",
		:role => 1,
		:password =>"employer123")

	employer2 = User.create(
		:name => "Employer2",
		:email => "employer3@email.com",
		:company => "Edamame",
		:role => 1,
		:password =>"employer123")

	customer1 = User.create(
		:name => "Customer1",
		:email => "customer1@email.com",
		:company => "company 1",
		:role => 2,
		:password =>"customer123")


	customer2 = User.create(
		:name => "Customer2",
		:email => "customer2@email.com",
		:company => "company 1",
		:role => 2,
		:password =>"customer123")

	customer3 = User.create(
		:name => "Customer3",
		:email => "customer3@email.com",
		:company => "company ",
		:role => 2	,
		:password =>"customer123")

	puts "Users created, 2 employee, 3 customer"
end


if EmployeeCustomer.all.empty?
	if Employee.all.empty?
		employees = User.where(:role => 1)
		employees.each do |emp|
			Employee.create(:user_id => emp.id)
		end
	end

	if Customer.all.empty?
		customers = User.where(:role => 2)
		customers.each do |cus|
			Customer.create(:user_id => cus.id)
		end
	end	

	Customer.all.each do |cus|
		EmployeeCustomer.create(:customer_id => cus.id, :employee_id => rand(Employee.count))
	end
	puts "relationhip created. 3 relationships, assigining an employee to each customer"
end


if Order.all.empty?
	Order.create(:employee_id => Employee.order('RANDOM()').first.id, :customer_id => Customer.order('RANDOM()').first.id)
	Order.create(:employee_id => Employee.order('RANDOM()').first.id, :customer_id =>Customer.order('RANDOM()').first.id)
	Order.create(:employee_id => Employee.order('RANDOM()').first.id, :customer_id =>Customer.order('RANDOM()').first.id)
end

if Insurance.all.empty?
	insurance1 = Insurance.create(
		:insurance_company_name =>"Insurance 1",
		:insurance_company_description=>"First insurance company")
	insurance2 = Insurance.create(
		:insurance_company_name =>"Insurance 2",
		:insurance_company_description=>"Second insurance company")
	puts "Insurance company created"
end	

if SalesVehicle.all.empty?
	car1 = SalesVehicle.create(
		:name=>"car 1",
		:brand =>"brand1",
		:description =>"first sold car",
		:price => 50,
	)
	car2 = SalesVehicle.create(
		:name=>"car 2",
		:brand =>"brand2",
		:description =>"second sold car",
		:price => 50,
	)
	puts "create 2 car sales"
end


# create 3 services, and each service has 2 jobs.
if Service.all.empty?
	@orders = Order.all
	@orders.each do |order|
		service = Service.create(
			:service_name =>"Car service for Mr. #{order.customer.user.name}",
			:service_description => "the car is not starting",
			:price => 50 )
		job = Job.create(:service_id => service.id)
		job = Job.create(:service_id => service.id)
	end
	puts "create 3 services, 2 jobs each"
end

