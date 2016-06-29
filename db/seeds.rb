# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Plant.destroy_all
Location.destroy_all

location1 = Location.create ({
	site_name: "Edible Gardens",
	address: "130E Minden Road Singapore 248819",
	type_of_property: "Community garden",
	other_info: "https://www.facebook.com/EdibleGardenCityProject/"})

location2 = Location.create ({
	site_name: "Green Valley Farms",
	address: "No.1 Bah Soon Pah Road Singapore 769959",
	type_of_property: "Adopt-a-plot",
	other_info: "http://www.gvalleyfarms.com/"});

location3 = Location.create ({
	site_name: "Marine Terrace Breeze Community Garden",
	address: "No.1 Bah Soon Pah Road Singapore 769959",
	type_of_property: "Community Garden",
	other_info: "http://www.gvalleyfarms.com/"});

location4 = Location.create ({
	site_name: "Nanyang zone 2 RC Com gdn",
	address: "No.1 Bah Soon Pah Road Singapore 769959",
	type_of_property: "Community Garden",
	other_info: "http://www.gvalleyfarms.com/"});



plant = Plant.new
	plant.image = "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/Asiatic_Pennywort.jpg/800px-Asiatic_Pennywort.jpg"
	plant.name = "Asiatic Pennywort"
	plant.latin_name = "Centella asiatica （linn.) urban  /  Hydrocotyle Sibthorpioides"
	plant.family = "Apiaceae / Umbelliferae (Carrot or Hemlock Family)"
	plant.other_name = "Gotu Kola; Indian Pennywort; Pegagan (Malay), 雷公根 , ?雪草，崩大碗，破铜钱，落得打"
	plant.edible_part = "Leaves, Flowers"
	plant.origin = "Asia"
	plant.physical_char = "The stems are slender, creeping stolons, green to reddish-green in color, connecting plants to each other. It has long-stalked, green, reniform leaves with rounded apices which have smooth texture with palmately netted veins. The flowers are white or pinkish to red in color, born in small, rounded bunches (umbels) near the surface of the soil. Each flower is partly enclosed in two green bracts."
	plant.flavour_profile = "Slight bitterness"
	plant.medical_properties = "Helpful for flus, throat inflammations, sprains. Also for cancers."
	plant.locations << [location1, location2]
    plant.thrives_in = "Damp places"
	plant.other_info = "Avoid during pregnancy & lactation and not to be given to children."
	if plant.save
  		  puts "Plant saved!"
	end

plant = Plant.new
	plant.image = "http://1.bp.blogspot.com/-WydpcwOm6qk/VS1jiMb7DGI/AAAAAAAAUyU/UezCft7PaN8/s1600/P1050663.JPG"
	plant.name = "Cat's Whiskers"
	plant.latin_name = "Orthosiphon aristatus F. Lamiaceae; clerodendranthus spicatus (thunb.) c.y. wu"
	plant.family = "Lamiaceae"
	plant.other_name = "Java Tea, Kumis Kutjing, 猫须草，肾茶，猫须公，圆锥直管草，化石草"
	plant.edible_part = "Leaves"
	plant.origin = "East Asia"
	plant.physical_char = "Multi branched stems have opposite, ovate leaves to 5cm with fine toothed martins. Terminal flower stems carry whorls of white, two-lipped flowers and protruding purple stamens, which give the flower its characteristic cat’s whiskers appearance."
	plant.flavour_profile = "Mildly bitter"
	plant.medical_properties = "Kidney diseases; cures rheumatisms, high blood pressures, diabetes"
	plant.locations << [location1]
    plant.thrives_in = "Sunny places"
	plant.other_info = "https://www.herbsarespecial.com.au/free-herb-information/cats-whiskers.html vol 2, p40"
	if plant.save
  		  puts "Plant saved!"
	end

plant = Plant.new
	plant.image = "https://s-media-cache-ak0.pinimg.com/564x/34/ae/2a/34ae2a504d8e857e91ac74d875facad8.jpg"
	plant.name = "Bitter Grass"
	plant.latin_name = "Orthosiphon aristatus F. Lamiaceae; clerodendranthus spicatus (thunb.) c.y. wu"
	plant.family = "Lamiaceae"
	plant.other_name = "苦力心"
	plant.edible_part = "Leaves"
	plant.origin = "East Asia"
	plant.physical_char = "Multi branched stems have opposite, ovate leaves to 5cm with fine toothed martins. Terminal flower stems carry whorls of white, two-lipped flowers and protruding purple stamens, which give the flower its characteristic cat’s whiskers appearance."
	plant.flavour_profile = "Mildly bitter"
	plant.medical_properties = "Kidney diseases; cures rheumatisms, high blood pressures, diabetes"
	plant.locations << [location2, location3]
  plant.thrives_in = "Sunny places"
	plant.other_info = "https://www.herbsarespecial.com.au/free-herb-information/cats-whiskers.html vol 2, p40"
	if plant.save
	  puts "Plant saved!"
	end

plant = Plant.new
	plant.image = "http://www.herbal-supplement-resource.com/wp-content/uploads/2016/03/chinese-knotweed-fo-ti-678x381.jpg"
	plant.name = "Chinese Knotweed"
	plant.latin_name = "Centella asiatica （linn.) urban  /  Hydrocotyle Sibthorpioides"
	plant.family = "Apiaceae / Umbelliferae (Carrot or Hemlock Family)"
	plant.other_name = "Gotu Kola; Indian Pennywort; Pegagan (Malay), 雷公根 , ?雪草，崩大碗，破铜钱，落得打"
	plant.edible_part = "Leaves, Flowers"
	plant.origin = "Asia"
	plant.physical_char = "The stems are slender, creeping stolons, green to reddish-green in color, connecting plants to each other. It has long-stalked, green, reniform leaves with rounded apices which have smooth texture with palmately netted veins. The flowers are white or pinkish to red in color, born in small, rounded bunches (umbels) near the surface of the soil. Each flower is partly enclosed in two green bracts."
	plant.flavour_profile = "Slight bitterness"
	plant.medical_properties = "Helpful for flus, throat inflammations, sprains. Also for cancers."
	plant.locations << [location3]
	plant.thrives_in = "Damp places"
	plant.other_info = "Avoid during pregnancy & lactation and not to be given to children."
	if plant.save
	  puts "Plant saved!"
	end

plant = Plant.new
	plant.image = "http://lh4.ggpht.com/BIn-H4Jt9c3uUrTlcxkNQGi4FUD9getmH3V3NppOAeMFy0MU6T_a0K_sfAwPm6xLi5HhYUv_HBz5i8rCVU-J=s1200"
	plant.name = "Indian Snakeweed"
	plant.latin_name = "Centella asiatica （linn.) urban  /  Hydrocotyle Sibthorpioides"
	plant.family = "Apiaceae / Umbelliferae (Carrot or Hemlock Family)"
	plant.other_name = "Gotu Kola; Indian Pennywort; Pegagan (Malay), 雷公根 , ?雪草，崩大碗，破铜钱，落得打"
	plant.edible_part = "Leaves, Flowers"
	plant.origin = "Asia"
	plant.physical_char = "The stems are slender, creeping stolons, green to reddish-green in color, connecting plants to each other. It has long-stalked, green, reniform leaves with rounded apices which have smooth texture with palmately netted veins. The flowers are white or pinkish to red in color, born in small, rounded bunches (umbels) near the surface of the soil. Each flower is partly enclosed in two green bracts."
	plant.flavour_profile = "Slight bitterness"
	plant.medical_properties = "Helpful for flus, throat inflammations, sprains. Also for cancers."
	plant.locations << [location1, location3]
	plant.thrives_in = "Damp places"
	plant.other_info = "Avoid during pregnancy & lactation and not to be given to children."
	if plant.save
	  puts "Plant saved!"
	end

plant = Plant.new
	plant.image = "http://www.vdeltaexpress.com/content/images/thumbs/0000205_laksa-leaves.png"
	plant.name = "Laksa"
	plant.latin_name = "Centella asiatica （linn.) urban  /  Hydrocotyle Sibthorpioides"
	plant.family = "Apiaceae / Umbelliferae (Carrot or Hemlock Family)"
	plant.other_name = "Polygonum, knotweed (species), vietnamese mint"
	plant.edible_part = "Leaves, Flowers"
	plant.origin = "Asia"
	plant.physical_char = "The stems are slender, creeping stolons, green to reddish-green in color, connecting plants to each other. It has long-stalked, green, reniform leaves with rounded apices which have smooth texture with palmately netted veins. The flowers are white or pinkish to red in color, born in small, rounded bunches (umbels) near the surface of the soil. Each flower is partly enclosed in two green bracts."
	plant.flavour_profile = "Slight bitterness"
	plant.medical_properties = "Helpful for flus, throat inflammations, sprains. Also for cancers."
	plant.locations << [location1, location2, location3]
	plant.thrives_in = "Sunny places"
	plant.other_info = "Avoid during pregnancy & lactation and not to be given to children."
	if plant.save
	  puts "Plant saved!"
	end
