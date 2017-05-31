class Seed

  def self.start
    150.times do |i|
    user = User.create!(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      grade: rand(5..12).to_s + "th",
      password_digest: "test"
      )
      puts "#{user.name} #{user.email} #{user.grade}"
    end
  end

end

Seed.start
