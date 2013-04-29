FactoryGirl.define do 
	sequence(:email) { |n| "person#{n}@example.com" }

	factory :user do
		email { |i| "email#{i}@example.com"}
		password { "password" }
	end
end
