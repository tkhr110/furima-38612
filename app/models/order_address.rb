class OrderAddress
  include ActiveModel::Model
  attr_accessor :post_code, :area_id, :municipality, :detail, :building, :phone_number, :order_id, :user_id, :item_id, :token

  with_options presence: true do
    validates :token
    validates :post_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'is invalid. Enter it as follows (ex. 123-4567)' }
    validates :area_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :municipality
    validates :detail
    validates :phone_number, numericality: { only_integer: true, message: 'is invalid. Input only number' },
                             length: { minimum: 10, maximum: 11 }
    validates :user_id
    validates :item_id
  end

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(post_code: post_code, area_id: area_id, municipality: municipality, detail: detail, building: building,
                   phone_number: phone_number, order_id: order.id)
  end
end
