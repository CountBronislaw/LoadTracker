# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bullet_list = [
  ["Hornady", "JHP", "XTP", "125", ".38"],
  ["Speer", "GDHP", "Gold Dot", "90", "9mm Luger"],
  ["Xtreme", "RNCP", "Copper Plated", "115", "9mm Luger"]
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