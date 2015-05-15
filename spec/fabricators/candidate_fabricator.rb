Fabricator(:candidate) do
  name { Faker::Lorem.words(8).join(" ") }
  email { Faker::Lorem.words(8).join(" ") }
end