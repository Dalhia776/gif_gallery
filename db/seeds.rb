15.times do |n|
    a = User.new
    a.email =  Faker::Internet.email
    a.telephone_number = Faker::PhoneNumber.phone_number
    a.password = Faker::Internet.password(8)
    a.save
    1.times do |n|
      gif = Gif.new
      gif.title = Faker::Lorem.sentence(1)
      gif.url = File.open("#{Rails.root}/assets/images/#{image.gif}")
      gif.user_id = a.id
      gif.save!
        end
      end
