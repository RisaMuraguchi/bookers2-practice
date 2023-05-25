# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create!(
  [
    {email: 'bbb@bbb', name: '次郎', password: 'bbbbbb', profile_image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/sample-user2.jpg"), filename:"sample-user2.jpg")}
  ]
)

Book.create!(
  [
    {title: 'テスト1', body: 'テスト1です', user_id: users[0].id },
    {title: 'テスト2', body: 'テスト2です', user_id: users[0].id }
    ]
  )