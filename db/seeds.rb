500.times do |i|
  Info.create!(
    name:    "InfoName#{i}",
    category: "Category#{i}",
    address: "Address#{i}",
  )
end
