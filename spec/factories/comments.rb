FactoryGirl.define do
  
  factory :comment do
    title "MyString"
    content "MyText"
    author "MyString"
    updateable_id 1
    updateable_type "MyString"
  end

end
