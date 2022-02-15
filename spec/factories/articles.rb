FactoryGirl.define do
  factory :article do
    user  { User.first }
    title "My Amazing Article"
    user_id {user}
    description "this is sample description for this article"
  end
end