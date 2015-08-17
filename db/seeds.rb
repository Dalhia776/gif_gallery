15.times do |n|
    a = User.new
    a.email =  Faker::Internet.email
    a.password = Faker::Internet.password(8)
    a.save
    1.times do |n|
      urls = [http://localhost:3000/assets/american_psycho.gif,
        http://localhost:3000/assets/crazy_ash.gif,
        http://localhost:3000/assets/dean_dance.gif,
        http://localhost:3000/assets/gir_pizza.gif,
        http://localhost:3000/assets/heisenberg.gif,
        http://localhost:3000/assets/hug_gir.gif,
        http://localhost:3000/assets/kalessi.gif,
        http://localhost:3000/assets/kill_bill_fight.gif,
        http://localhost:3000/assets/know_nothing_snow.gif,
        http://localhost:3000/assets/mp_flesh_wound.gif,
        http://localhost:3000/assets/ni.gif,
        http://localhost:3000/assets/off_dead_wink.gif,
        http://localhost:3000/assets/saul.gif,
        http://localhost:3000/assets/sean_pic.gif,
        http://localhost:3000/assets/winchester_monkey.gif]
      g = Gif.new
      g.title = Faker::Lorem.words(4)
      g.url = url.each.select.random(1)
      g.user_id = a.id
      g.save!
        end
      end
