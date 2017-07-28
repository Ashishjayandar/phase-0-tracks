class_meet={
						people:{
							batch: '2017',
							count: {
							total: 50,
							confirmed: 27
								},
							meals: {
								Vegetarian: 12,
								Non_vegetarian:15
								}, 
							travel: ["Bus","Ship","Rocket"] 
							},
						speakers:{
							count:{
								total:6,
								confirmed:4
							},
							stay: {
								MGM_Grand:3,
								Ceaser_palace:1
							},
							entertainment: ["Eminem","Drake","Justin"]
						}
}


p class_meet

puts "The batch which is going to meet this time is #{class_meet[:people][:batch]}. Till now the number of people confirmed is 
#{class_meet[:people][:count][:confirmed]} out of #{class_meet[:people][:count][:total]}.The most preferred mode of transport is 
#{class_meet[:people][:travel][0]}. We have #{class_meet[:speakers][:count][:confirmed]} confirmed speakers so far out of which 
#{class_meet[:speakers][:stay][:MGM_Grand]} are staying in MGM"