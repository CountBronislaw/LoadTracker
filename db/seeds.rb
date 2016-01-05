# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bullet_list = [
  ["Hornady", "JHP", "XTP", "125 gr", ".38"],
  ["Speer", "GDHP", "Gold Dot", "90 gr", "9mm Luger"],
  ["Xtreme", "RNCP", "Copper Plated", "115 gr", "9mm Luger"]
]

puts "Seeding bullets..."

bullet_list.each do |manufacturer, style, name, weight, caliber|
  Bullet.create(manufacturer: manufacturer, style: style, name: name, weight: weight, caliber: caliber)
end

puts "Complete"

brass_list = [
  ["Mixed Headstamp", "9mm Luger"],
  ["Lake City", ".223"],
  ["Federal", "9mm Luger"],
  ["Winchester", ".357 Magnum"],
  ["PMC", ".223"],
  ["Starline", ".38 Spl"]
]

puts "Seeding brass..."

brass_list.each do |manufacturer, caliber|
  Brass.create(manufacturer: manufacturer, caliber: caliber)
end

puts "Complete"

primer_list = [
  ["Winchester", "Small Pistol", "Standard"],
  ["Winchester", "Small Pistol", "Magnum"],
  ["CCI", "Small Pistol", "Standard"],
  ["CCI", "Small Rifle", "Magnum"],
  ["Federal", "Small Pistol", "Standard"]
]

puts "Seeding primers..."

primer_list.each do |manufacturer, size, style|
  Primer.create(manufacturer: manufacturer, size: size, style: style)
end

puts "Complete"

press_list = [
  ["Dillon", "XL 650", 10000],
  ["RCBS", "Rock Chucker Supreme", 1500]
]

puts "Seeding presses..."

press_list.each do |manufacturer, model, round_count|
  Press.create(manufacturer: manufacturer, model: model, round_count: round_count)
end

puts "Complete"

powder_list = [
  ["Hodgdon", "HP-38"],
  ["Hodgdon", "H110"],
  ["Alliant Powder", "AR Comp"],,
  ["Hodgdon", "Unique"],
  ["Winchester", "231"],
  ["Winchester", "296"],
  ["Alliant Powder", "Power Pistol"]
]

puts "Seeding powders..."

powder_list.each do |manufacturer, name|
  Powder.create(manufacturer: manufacturer, name: name)
end

puts "Complete"

load_list = [
  [1, 1, 1, 1, "23 gr", "1.145\"", "Test Load", "Pistol"],
  [2, 2, 2, 2, "5 gr", "5.5\"", "", "Rifle"]
]

puts "Seeding Loads..."

load_list.each do |bullet, powder, primer, brass, charge, coal, name, load_type|
  Load.create(bullet_id: bullet, powder_id: powder, primer_id: primer, powder_charge: charge,
              coal: coal, name: name, load_type: load_type)
end

puts "Complete"