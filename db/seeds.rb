# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do 
Record.create!(
  date: '2020-12-12',
  ashi_id: 3,
  pair_id: 108,
  pips: 22,
  entry_basis:'www',
  issue_id: 2,
  lose_reason_id: 4,
  lose_reason_text: 'www',
  user_id: 2
)
end

7.times do 
  Record.create!(
    date: '2020-12-14',
    ashi_id: 3,
    pair_id: 108,
    pips: 30,
    entry_basis:'www',
    issue_id: 2,
    lose_reason_id: 4,
    lose_reason_text: 'www',
    user_id: 2
  )
  end

  3.times do 
    Record.create!(
      date: '2020-12-12',
      ashi_id: 3,
      pair_id: 108,
      pips: -8,
      entry_basis:'www',
      issue_id: 3,
      lose_reason_id: 4,
      lose_reason_text: 'www',
      user_id: 2
    )
    end

    6.times do 
      Record.create!(
        date: '2020-12-14',
        ashi_id: 3,
        pair_id: 108,
        pips: -20,
        entry_basis:'www',
        issue_id: 3,
        lose_reason_id: 4,
        lose_reason_text: 'www',
        user_id: 2
      )
      end

5.times do 
Record.create!(
date: '2020-12-17',
ashi_id: 3,
pair_id: 91,
pips: 22,
entry_basis:'www',
issue_id: 2,
lose_reason_id: 4,
lose_reason_text: 'www',
user_id: 2
)
end

12.times do 
Record.create!(
date: '2020-12-18',
ashi_id: 3,
pair_id: 91,
pips: 30,
entry_basis:'www',
issue_id: 2,
lose_reason_id: 4,
lose_reason_text: 'www',
user_id: 2
)
end

9.times do 
Record.create!(
date: '2020-12-17',
ashi_id: 3,
pair_id: 91,
pips: -8,
entry_basis:'www',
issue_id: 3,
lose_reason_id: 4,
lose_reason_text: 'www',
user_id: 2
)
end

3.times do 
Record.create!(
  date: '2020-12-18',
  ashi_id: 3,
  pair_id: 91,
  pips: -20,
  entry_basis:'www',
  issue_id: 3,
  lose_reason_id: 4,
  lose_reason_text: 'www',
  user_id: 2
)
end