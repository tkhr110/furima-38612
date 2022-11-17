FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { '1a' + Faker::Internet.password(min_length: 6, mix_case: true) }
    encrypted_password    { password }
    first_name            { '太郎' }
    first_name_kana       { 'タロウ' }
    last_name             { '山田' }
    last_name_kana        { 'ヤマダ' }
    date_of_birth         { Faker::Date.birthday(min_age: 5, max_age: 92) }
  end
end
