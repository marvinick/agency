Fabricator(:skill) do
  name { Faker::Lorem.words(10).join(" ") }
  candidate
end