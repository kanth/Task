# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = ['Test1', 'Test2', 'Test3', 'Test4', 'Test5']

users.each do |user|
  User.create(name: user, email: "#{user.downcase}@test.com", password: 'test123')
end




Post.create(title: 'Is Rails a framework?', user_id: User.pluck(:id).sample)
Post.create(title: 'What is SQL stands for?', user_id: User.pluck(:id).sample)
Post.create(title: 'React vs Angular differences?', user_id: User.pluck(:id).sample)
Post.create(title: 'What are other ROR frameworks?', user_id: User.pluck(:id).sample)
Post.create(title: 'what is Hadoop?', user_id: User.pluck(:id).sample)



Comment.create(body: 'Yes, might be', post_id: 1, parent_id: nil, user_id: User.pluck(:id).sample)
Comment.create(body: 'Rails is framework from 37 signals', post_id: 1, parent_id: 1, user_id: User.pluck(:id).sample)
Comment.create(body: 'Any example for the rails app, please proivde', post_id: 1, parent_id: 2, user_id: User.pluck(:id).sample)

Comment.create(body: 'Structured query language', post_id: 2, parent_id: nil, user_id: User.pluck(:id).sample)
Comment.create(body: 'example is mysql', post_id: 1, parent_id: 4, user_id: User.pluck(:id).sample)

Comment.create(body: 'Few differences are there, major one binding the data', post_id: 3, parent_id: nil, user_id: User.pluck(:id).sample)
Comment.create(body: 'What that means, can you explain little bit?', post_id: 3, parent_id: 6, user_id: User.pluck(:id).sample)
Comment.create(body: 'One way biding of data is react and two way binding of data is Angular', post_id: 3, parent_id: 8, user_id: User.pluck(:id).sample)

Comment.create(body: 'Merb is one of the frameworks', post_id: 4, parent_id: nil, user_id: User.pluck(:id).sample)
Comment.create(body: 'Sinatra is one of the frameworks', post_id: 4, parent_id: 9, user_id: User.pluck(:id).sample)

Comment.create(body: 'Apache Hadoop is a collection of open-source software utilities that facilitate using a network of many computers to solve problems involving massive amounts of data and computation. It provides a software framework for distributed storage and processing of big data using the MapReduce programming model.', post_id: 5, parent_id: nil, user_id: User.pluck(:id).sample)
Comment.create(body: 'Any good online training or books, please suggest', post_id: 5, parent_id: 12, user_id: User.pluck(:id).sample)