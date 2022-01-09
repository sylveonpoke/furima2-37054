FactoryBot.define do
  factory :item do
    item_name            { 'aaa' }
    item_explanation     { 'aaa' }
    condition_id         { 2 }
    prefecture_id        { 2 }
    category_id          { 2 }
    delivery_charge_id   { 2 }
    time_required_id     { 2 }
    price                { 1000 }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
