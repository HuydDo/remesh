# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Conversation.destroy_all
Message.destroy_all
Thought.destroy_all


Conversation.destroy_all
Message.destroy_all
Thought.destroy_all

# Conversations
books = Conversation.create( title: "C++ primer",
start_date: Date.today
)
phones = Conversation.create( title: "Samsung Edge 7",
    start_date: Date.today
  )

# Messages
message1 = books.messages.create( text: "Best C++ Book")
message2 = books.messages.create( text: "Have a good practice questions")
message3 = phones.messages.create( text: "Affordable phone")

# Thoughts
message1.thoughts.create( text: "Good for beginner")
message1.thoughts.create( text: "Clear and easy to understand")
message2.thoughts.create( text: "Fun to learn")
message3.thoughts.create( text: "Reliabe phone")
