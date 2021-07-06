# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Create 10 users:
10.times do 
    @user = User.create(name: Faker::Name.name, email: Faker::Internet.unique.email, password: 'password')
    @user.save
end

# Clubs
@c1 = Club.create(name: "Chess Club", summary: "For lovers of Chess", description: 'Chess is a complicated game that requires strategy, careful thinking, and overall practice. By joining chess club, you’ll have the opportunity to learn new strategies to beat your opponent and practice playing against other students, giving you a fun challenge. You may even get to participate in chess competitions.', date_founded: DateTime.new(2001,2,3,4,5,6), user_id: 1)
@c2 = Club.create(name: "Anime Club", summary: '"All we can do is live until the day we die. Control what we can…and fly free." – Deneil Young (Uchuu Kyoudai or Space Brothers)', description: 'For you Japanese anime fanatics, here is your opportunity to share your fandom with your classmates. With this club, you’ll be able to watch all of your famous anime shows and movies, learn to speak some Japanese, perhaps attend some anime conventions as a group, and maybe even draw out some anime characters and scripts yourself!', date_founded: DateTime.new(2020,2,3,4,5,6), user_id: 1)
@c3 = Club.create(name: "Outdoors Club", summary: "Two’s companies, trees a crowd! Let's have some outdoor fun!", description: 'Sitting inside a school building for 8+ hours a day can be exhausting. Put some adventure into your college career by joining a club that focuses on outdoor activities. This could include hiking, skiing, cycling, you name it! You’ll get to engage in some great outdoor physical activities with some great classmates who share the same sense of adventure.', date_founded: DateTime.new(2015,2,3,4,5,6), user_id: 2)
@c4 = Club.create(name: "Creative Writing Club", summary: '"If you want to change the world, Pick up your pen and write" - Martin Luther', description: 'Want to write short stories, novels, be the next J.K. Rowling? Creative writing club is a good place for you to start. By joining this club, you’ll find that your writing skills really improve as you will be able to practice writing constantly and receive helpful feedback from your peers.', date_founded: DateTime.new(2011,2,3,4,5,6), user_id: 2)
@c5 = Club.create(name: "Robotics Club", summary: "#NerdGang ", description: 'Robotics professionals are in high-demand in today’s tech companies, where machine learning and artificial intelligence are hot topics. It’s worth joining a robotics club to see if you can discover your passion in this field because it could set you up for a lucrative career in the future.', date_founded: DateTime.new(2013,2,3,4,5,6), user_id: 3)
@c6 = Club.create(name: "Speech and Debate Club", summary: "Where the brains convene", description: 'If you want to get good at public speaking, reporting on current events, and making effective arguments, speech and debate is the club for you. Through speech and debate, you’ll have the opportunity to compete locally, regionally, and nationally in a variety of events that span from acting to intense 45-minutes debates. Those who do speech and debate really do fall in love with it and are often found in suits competing at tournaments on weekends.', date_founded: DateTime.new(1997,2,3,4,5,6), user_id: 3)
@c7 = Club.create(name: "Book Club", summary: "Book Addicts Only :)", description: 'If you enjoy reading and want to make sure that the hustle and bustle of a busy school schedule doesn’t prevent you from engaging with good literature, join a book club at your school. Book clubs are great for getting great book suggestions and keeping you accountable for keeping up with your reading. You’ll be able to engage in critical discussions of each book, allowing you to share your thoughts with other like-minded classmates.', date_founded: DateTime.new(2021,2,3,4,5,6), user_id: 4)
@c8 = Club.create(name: "Recycling Club", summary: '"Rethink. Reduce. Reuse. Recycle." -Some wise man/woman ', description: 'The students in recycling clubs are the ones who make sure that our school is being eco-friendly in its classrooms. These students establish the school-wide recycling initiative by delivering the bins to each classroom, and they usually come by on a weekly basis to pick up the recycling bins and deposit the materials in the appropriate location to be recycled.', date_founded: DateTime.new(2015,2,3,4,5,6), user_id: 4)
@c9 = Club.create(name: "Computer Science Club", summary: "Programming is 10% writing code and 90% understanding why it is not working", description: 'Computer Science is a high-demand career nowadays, and it tends to pay very well if you work for the big tech companies. Thus, it is worth trying out a computer science club in high school to learn some coding and seeing if this incredibly lucrative field is something you would be interested in. You’ll get to develop complex programs and perhaps even enter competitions and see what your other classmates have built.

', date_founded: DateTime.new(2010,2,3,4,5,6), user_id: 5)
@c10 = Club.create(name: "Investment Club", summary: "For lovrs of Chess", description: "Investment club provides you an opportunity to learn about the stock market, the bonds market, and other ways you can invest funds to make money. You'll get to learn how to evaluate a market in order to make strategic investments and maximize your return on investment. You’ll also get to network with investment bankers and other industry professionals who can tell you how to make a fortune by doing this as a career.", date_founded: DateTime.new(2003,2,3,4,5,6), user_id: 5)

@c1.save
@c2.save
@c3.save
@c4.save
@c5.save
@c6.save
@c7.save
@c8.save
@c9.save
@c10.save

# ClubUser
@cu1 = ClubUser.create(user_id: 1, club_id: 1, admin: true, reason: "Club Founder")
@cu2 = ClubUser.create(user_id: 1, club_id: 2, admin: true, reason: "Club Founder")
@cu3 = ClubUser.create(user_id: 2, club_id: 3, admin: true, reason: "Club Founder")
@cu4 = ClubUser.create(user_id: 2, club_id: 4, admin: true, reason: "Club Founder")
@cu5 = ClubUser.create(user_id: 3, club_id: 5, admin: true, reason: "Club Founder")

@cu6 = ClubUser.create(user_id: 3, club_id: 6, admin: true, reason: "Club Founder")
@cu7 = ClubUser.create(user_id: 4, club_id: 7, admin: true, reason: "Club Founder")
@cu8 = ClubUser.create(user_id: 4, club_id: 8, admin: true, reason: "Club Founder")
@cu9 = ClubUser.create(user_id: 5, club_id: 9, admin: true, reason: "Club Founder")
@cu10 = ClubUser.create(user_id: 5, club_id: 10, admin: true, reason: "Club Founder")

@cu11 = ClubUser.create(user_id: 6, club_id: 1, admin: false, reason: "Club member added from seed file")
@cu12 = ClubUser.create(user_id: 6, club_id: 2, admin: false, reason: "Club member added from seed file")
@cu13 = ClubUser.create(user_id: 7, club_id: 3, admin: false, reason: "Club member added from seed file")
@cu14 = ClubUser.create(user_id: 7, club_id: 4, admin: false, reason: "Club member added from seed file")
@cu15 = ClubUser.create(user_id: 8, club_id: 5, admin: false, reason: "Club member added from seed file")

@cu16 = ClubUser.create(user_id: 8, club_id: 6, admin: false, reason: "Club member added from seed file")
@cu17 = ClubUser.create(user_id: 9, club_id: 7, admin: false, reason: "Club member added from seed file")
@cu18 = ClubUser.create(user_id: 9, club_id: 8, admin: false, reason: "Club member added from seed file")
@cu19 = ClubUser.create(user_id: 5, club_id: 9, admin: false, reason: "Club member added from seed file")
@cu20 = ClubUser.create(user_id: 5, club_id: 10, admin: false, reason: "Club member added from seed file")

@cu1.save
@cu2.save
@cu3.save
@cu4.save
@cu5.save
@cu6.save
@cu7.save
@cu8.save
@cu9.save
@cu10.save

@cu11.save
@cu12.save
@cu13.save
@cu14.save
@cu15.save
@cu16.save
@cu17.save
@cu18.save
@cu19.save
@cu20.save