# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "🌱 Seeding data..."
User.destroy_all
users = User.create!([
    { 
        name: "John Doe", 
        email: "johndoe@gmail.com", 
        password: "awesome", 
        password_confirmation: "awesome", 
        phone_number: "0701234567", 
        role: "author"
    }, 
    { 
        name: "Mary Doe", 
        email: "marydoe@gmail.com", 
        password: "marydoes", 
        password_confirmation: "marydoes",
        phone_number: "07070834", 
        role: "editor"
    },
     { 
        name: "Albert Stains", 
        email: "alstains@gmail.com", 
        password: "stains123", 
        password_confirmation: "stains123",
        phone_number: "176726467", 
        role: "editor"
    },
     { 
        name: "Common Joe", 
        email: "common@gmail.com", 
        password: "commoner123", 
        password_confirmation: "commoner123",
        phone_number: "123451473", 
        role: "user"
    }
    ])

#     User.create!(name: "Cool Joe", email: "coolj@gmail.com", password: "cooljoe", password_confirmation: "cooljoe", ph
# one_number: "1234444491", role: "contributer")

# Article.destroy_all
# articles = Article.create!([
#     {
#         title:"",
#         content: "",
#         image: "",
#         category: "",
#         user_id: ,
#     }, 
#     {
#         title:"",
#         content: "",
#         image: "",
#         category: "",
#         user_id: ,
#     }, 
#     {
#         title:"",
#         content: "",
#         image: "",
#         category: "",
#         user_id: ,
#     }, 
#     {
#         title:"",
#         content: "",
#         image: "",
#         category: "",
#         user_id: ,
#     }, 
#     {
#         title:"",
#         content: "",
#         image: "",
#         category: "",
#         user_id: ,
#     }, 
#     {
#         title:"",
#         content: "",
#         image: "",
#         category: "",
#         user_id: ,
#     },
# ])

puts "✅ Done seeding"