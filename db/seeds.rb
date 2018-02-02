# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

author = Author.create(email:'zhang@126.com', nickname:'Sky', password:'zhang123', password_confirmation:'zhang123')
Post.create(title:'Zhang', body:'ZhangBody', published: true, author: author)
Post.create(title:'Zhang2', body:'Zhang2Body', author: author)
Post.create(title:'JII', body:'JIIBody', published: true, author: author)
Post.create(title:'JII2', body:'JII2Body', author: author)
