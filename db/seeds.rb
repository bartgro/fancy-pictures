require 'open-uri'

def create_post_with_attachement(title:, description:, username:)
  Post.create(
    title: title,
    description: description,
    username: username
  ).then do |post|
    file = OpenURI.open_uri(get_picture_url(title))

    post.picture.attach(
      io: file,
      filename: "#{post.title}.jpg",
      content_type: 'image/jpeg'
    )
  end
end

def get_picture_url(picture_title)
  Faker::Avatar.image(
    slug: picture_title.parameterize,
    size: '1000x1000',
    format: 'jpg',
    set: 'set4',
    bgset: "bg#{[1, 2, 3].sample}"
  )
end

20.times do
  create_post_with_attachement(
    title: Faker::Games::Pokemon.move,
    description: Faker::GreekPhilosophers.quote,
    username: Faker::FunnyName.name
  )
  print '.'
end
