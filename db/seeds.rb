class Seed

  def self.start
    150.times do |i|
    user = User.create!(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      grade: rand(5..12).to_s + "th",
      password_digest: "test",
      phone: Faker::PhoneNumber.cell_phone,
      address: "#{Faker::Address.street_name}, #{Faker::Address.city}, #{Faker::Address.state}, #{Faker::Address.zip}",
      status: ["lead", "current", "past"].sample
      )
      user.roles.create(name: 'student')
    end
  end
end

Seed.start
