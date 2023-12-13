FactoryBot.define do
    factory :post do
        title { 'my title' }
      body { 'what is title' }
      publised_at { '2020-10-10' } # Assuming owner_dob is a date attribute
      
     association :user, factory: :user
  
      # Add other attributes as needed
    end
  end
