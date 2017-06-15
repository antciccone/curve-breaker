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
      puts "#{user.name} #{user.email} #{user.grade}"
      Score.create!(
        act: rand(10..36),
        sat: rand(900..1600),
        practice_sat: "N/A",
        practice_act: "N/A",
        sat_math: "N/A",
        sat_english: "N/A",
        psat_math: "N/A",
        psat_english: "N/A",
        user_id: user.id
      )
      Score.create!(
        act: rand(10..36),
        sat: rand(900..1600),
        practice_sat: "N/A",
        practice_act: "N/A",
        sat_math: "N/A",
        sat_english: "N/A",
        psat_math: "N/A",
        psat_english: "N/A",
        user_id: user.id
      )
      Lesson.create!(
      user_id: user.id,
      notes: Faker::Lorem.paragraphs(3, true),
      )
    end
  end
  def self.teacher
    10.times do |i|
      Teacher.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.cell_phone,
        title: "Teacher"
      )
    end
  end
end

Seed.start
Seed.teacher
