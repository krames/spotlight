
task :mention => :environment do
  Mention.create([{
      username: Faker::Internet.user_name,
      adapter_configuration_id: 1,
      link: Faker::Internet.url,
      blurb: Faker::Lorem.paragraph,
      content: Faker::Lorem.paragraphs
      }])
end
