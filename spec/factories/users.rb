FactoryBot.define do
  factory :user do
    nickname              {'test'}
    email                 {'test@example'}
    password              {'a1a1a1'}
    password_confirmation {password}
    first_name            {'テスト'}
    first_name_kana       {'テスト'}
    last_name             {'テスト'}
    last_name_kana        {'テスト'}
    date_of_birth         {'1950-01-01'}
  end
end