FactoryBot.define do
  factory :order_address do
    token { 'tok_abcdefghijk00000000000000000' }
    post_code { '111-1111' }
    area_id { Faker::Number.between(from: 2, to: 47) }
    municipality { '名古屋市港区' }
    detail { '六番町1-1' }
    building { '駄目荘' }
    phone_number { '08000000000' }
  end
end
