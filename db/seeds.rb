BOONDOCK_SAINTS_GIFS = Giphy.search('boondock saints', {limit: 50})

counter = 0
15.times do |n|
    password = Faker::Internet.password(8)
    user = User.create!(
    email: Faker::Internet.email,
    password: password
    )


    5.times do
      urls = BOONDOCK_SAINTS_GIFS
      g = Gif.create!(image_url: url)
      user.gifs << gif
      counter = counter + 1
    end


end
