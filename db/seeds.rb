# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

finaltables = Finaltable.create([
  
  { startPosition: 'Mombasa', startTime: '0600', endLocation: 'Goma', startLocation1: 'PFK Msa Yard', startLocation2: 'Maungu', startLocation3: 'Mtito Andei', startLocation4: 'Emali', startLocation5: 'Machakos Junction', startLocation6: 'Salgaa',	startLocation7: 'Burnt Forest', startLocation8: 'Webuye',	startLocation9: 'Malaba border', startLocation10: 'Nakalama', startLocation11: 'Nakalama', startLocation12: 'Namanve', startLocation13: 'Maddu', startLocation14: 'Lyantonde', startLocation15: 'Rubaare Rest', startLocation16: 'Cyanika border', startLocation17: 'Gisenyi border', endLocation1: 'Maungu',endLocation2: 'Mtito Andei', endLocation3: 'Emali', endLocation4: 'Machakos Junction', endLocation5: 'Salgaa', endLocation6: 'Burnt Forest',endLocation7: 'Webuye', endLocation8: 'Malaba border', endLocation9: 'Nakalama', endLocation10: 'Nakalama', endLocation11: 'Namanve', endLocation12: 'Maddu', endLocation13: 'Lyantonde', endLocation14: 'Rubaare Rest', endLocation15: 'Cyanika border', endLocation16: 'Gisenyi border', endLocation17: 'Goma', startTime1: '0600', startTime2: '0945', startTime3: '1345',startTime4: '1700', startTime5: '0600', startTime6: '0945', startTime7: '13:15', startTime8: '1600', startTime9: '0600', startTime10: '0600', startTime11: '0915', startTime12: '1300', startTime13: '1700', startTime14: '0600', startTime15: '1030', startTime16: '0600', startTime17: '0600', endTime1: '0900',endTime2: '1245',endTime3: '1615',	endTime4: '1900', endTime5: '0900', endTime6: '1215', endTime7: '1515', endTime8: '1900', endTime9: '0730', endTime10: '0830', endTime11: '1200', endTime12: '1630', endTime13: '2000', endTime14: '0930', endTime15: '1430', endTime16: '0800', endTime17: '0630', driveTime1: '3:00:00', driveTime2: '3:00:00', driveTime3: '2:30:00', driveTime4: '2:00:00', driveTime5: '3:00:00', driveTime6: '2:30:00', driveTime7: '2:00:00', driveTime8: '3:00:00', driveTime9: '1:30:00', driveTime10: '02:30:00', driveTime11: '02:45:00', driveTime12: '03:30:00', driveTime13: '03:00:00', driveTime14: '03:30:00', driveTime15: '04:00:00', driveTime16: '02:00:00', driveTime17: '00:30:00', event1:'Tea Break', event2:'Lunch Stop', event3:'Evening Tea', event4:'Night Stop', event5:'Tea Break',event6:'Lunch Stop',event7:'Evening Tea', event8:'Night Stop', event9:'Border Point', event10:'Tea Break', event11:'Lunch Stop', event12:'Evening Tea', event13:'Night Stop', event14:'Tea Break', event15:'Border Point', event16:'Border Point', event17:'Offloading Site', event18:'', distance1:129, distance2:126, distance3:109, distance4:81, distance5:137, distance6:110, distance7:87, distance8:114, distance9:60, distance10:97, distance11:108, distance12:144, distance13:120, distance14:149, distance15:138, distance16:86, distance17:8, distance18:'' },
  
  ]);
  

def message
    puts 'Data seeded successfuly like shit'
end

message()
