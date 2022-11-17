FactoryBot.define do
  factory :purchase_shipping do
    token { 'tok_abcdefghijk00000000000000000' }
    post_code { '111-1111' }
    area_id { Faker::Number.between(from: 2, to: 48) }
    municipality { '愛知県' }
    detail { '名古屋市港区六番町1-1' }
    building_name { '駄目荘' }
    phone_number { '08000000000' }
  end
end