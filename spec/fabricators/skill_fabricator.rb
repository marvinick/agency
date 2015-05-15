Fabricator(:skill) do
  name { Faker::Lorem.words(8).join(" ")}
end