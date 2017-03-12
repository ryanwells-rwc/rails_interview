# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

CSV.foreach("db/Makes.txt", headers: true) do |row|
	Make.create(id: row["id"], name: row["name"], created_at: row["created_at"], updated_at: row["updated_at"])
end

CSV.foreach("db/Models.txt", headers: true) do |row|
	Model.create(id: row["id"], name: row["name"], make_id: row["make_id"], year_id: row["year_id"], car_tags: row["car_tages"], created_at: row["created_at"], updated_at: row["updated_at"])
end

CSV.foreach("db/Trims.txt", headers: true) do |row|
	Trim.create(id: row["id"], model_id: row["model_id"], description: row["description"], msrp: row["msrp"], invoice: row["invoice"], engine: row["engine"], transmission: row["transmission"], num_of_doors: row["num_of_doors"], mpg_city: row["mpg_city"], mpg_hwy: row["mpg_hwy"], crappy_image: row["crappy_image"], default_matched_image: row["default_matched_image"], created_at: row["created_at"], updated_at: row["updated_at"], combined_fuel_economy: row["combined_fuel_economy"])
end
