puts 'Seeds: start'
User.find_or_create_by(email: 'user@user.com') do |user|
  user.password = 'useruser'
end
User.find_or_create_by(email: 'konto.andrzeja@gmail.com') do |user|
  user.password = 'useruser'
end
User.find_or_create_by(email: 'email1@poczta.com') do |user|
  user.password = 'useruser'
end
User.find_or_create_by(email: 'email2@poczta.com') do |user|
  user.password = 'useruser'
end

users = User.all
categories = Category.all
9.times do
  Product.create!(
      name: Faker::Lorem.word,
      category: categories.sample,
      users: users.sample(rand(1..2))
  )
end

products = Product.all
15.times do
  product = products.sample
  user = users.select { |u| u.products.exclude?(product) }.sample
  discussion = Discussion.create(
      product: product,
      user: user
  )
  discussion.messages << Message.create(
      content: Faker::Lorem.paragraph,
      user: user
  )
  1..rand(1..5).times do
    discussion.messages << Message.create(
        content: Faker::Lorem.paragraph,
        user: product.users.sample
    )
  end
end

puts 'Seeds: done'