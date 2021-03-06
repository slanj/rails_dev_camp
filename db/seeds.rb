# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts " Creation accomplished: 3 topics"

10.times do |blog|
  Blog.create!(
    title: "Awesome blog post #{blog + 42}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis dui eget lacus tincidunt luctus. Nunc vel nisl nunc. Mauris tristique posuere neque at lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam sapien tellus, placerat quis fringilla non, fermentum sit amet augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec aliquet maximus bibendum. Quisque gravida turpis feugiat turpis vulputate lacinia. Aliquam a porta felis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
    topic_id: Topic.last.id
  )
end

puts 'Creation accomplished: 10 blog posts'

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill + 1}",
    percent_utilized: 15
  )
end

puts 'Creation accomplished: 5 skills'

8.times do |item|
  Portfolio.create!(
    title: "Portfolio title #{item}",
    subtitle: "Ruby on Rails",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis dui eget lacus tincidunt luctus. Nunc vel nisl nunc. Mauris tristique posuere neque at lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam sapien tellus, placerat quis fringilla non, fermentum sit amet augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec aliquet maximus bibendum. Quisque gravida turpis feugiat turpis vulputate lacinia. Aliquam a porta felis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
    main_image: 'https://unsplash.it/600/400?random',
    thumb_image: 'https://unsplash.it/300?random'
  )
end

1.times do |item|
  Portfolio.create!(
    title: "Portfolio title #{item}",
    subtitle: "Angular",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras quis dui eget lacus tincidunt luctus. Nunc vel nisl nunc. Mauris tristique posuere neque at lacinia. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam sapien tellus, placerat quis fringilla non, fermentum sit amet augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec aliquet maximus bibendum. Quisque gravida turpis feugiat turpis vulputate lacinia. Aliquam a porta felis. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
    main_image: 'https://unsplash.it/600/400?random',
    thumb_image: 'https://unsplash.it/300?random'
  )
end

puts 'Creation accomplished: 9 portfolio items'

3.times do |technology|
  Portfolio.last.technologies.create!(
  name: "Technology #{technology}"
  )
end

puts 'Creation accomplished: 3 technology items'
