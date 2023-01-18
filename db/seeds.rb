# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
    

    service = Service.create(title: "Yoga", duration: '3 months', class_time:'5:00PM',fee:'$500',image_url:'Image URL')
    user = User.create(full_name: "Luke", username: 'test', email:'test@test.com',password_digest:'password')
    Reservation.create(city:"Nairobi",start_date:'30/1/2023',user_id:user.id, service_id:service.id)
