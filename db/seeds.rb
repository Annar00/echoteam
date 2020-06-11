# Create a main sample user.
User.create!(name:  "Admin",
             email: "administrator@echogram.com",
             phone:  "07564123456",
             password:              "echo1234",
             password_confirmation: "echo1234",
             admin:     true)

# Generate a bunch of additional users.
10.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@awad.com"
  phone = Faker::PhoneNumber.cell_phone.to_s
  password = "password"
  User.create!(name:  name,
              email: email,
              phone: phone,
              password:              password,
              password_confirmation: password)
end



