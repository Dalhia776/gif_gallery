BOONDOCK_SAINTS_GIFS = Giphy.search('boondock saints', {limit: 50})

counter = 0
10.times do |n|
    password = Faker::Internet.password(8)
    user = User.create!(
    email: Faker::Internet.email,
    password: password
    )


    5.times do
      url = BOONDOCK_SAINTS_GIFS[counter].original_image.url.to_s
      gif = Gif.create!(url: url)
      user.gifs << gif
      counter = counter + 1
    end


end
