FactoryBot.define do
  factory :user do
    nickname              { 'shusei' }
    email                 { 'shusei@example' }
    password              { 'a1a1a1' }
    encrypted_password    { 'a1a1a1' }
    first_name            { '太郎' }
    first_name_kana       { 'タロウ' }
    last_name             { '山田' }
    last_name_kana        { 'ヤマダ' }
    date_of_birth         { '1999-01-01' }
  end
end
