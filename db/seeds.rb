# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

55.times do
  Rule.create!(
    image: ActiveStorage::Blob.create_and_upload!(io: File.open(Rails.root.join("app/assets/images/no_image.jpg")),filename: 'no_image.jpg'),
    name: "aaaaaaa",
    issue_id: 3,
    ashi_id: 5,
    pair_id: 51,
    kind_id: 3,
    overview: "wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
    overview_content: "texttexttexttexttexttexttexttexttexttexttexttexttexttext",
    entry: "texttexttexttexttexttexttexttexttexttexttexttexttexttext",
    exit: "texttexttexttexttexttexttexttexttexttexttexttexttexttext",
    summary: "texttexttexttexttexttexttexttexttexttexttexttexttexttext",
    user_id: 2
  )
end
