FactoryGirl.define do
    sequence(:email) { |n| "user#{n}@example.com" }
    factory :user do
        email
        password "1234567890"
        first_name "test"
        last_name "test"
        admin false
        
    end
    
    
    
end
