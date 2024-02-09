require_relative './config/environment'

templates_to_seed = [
  { startPosition: 'Mombasa', startTime: '0600', endLocation: 'Goma', startLocation1: 'PFK Msa Yard', startLocation2: 'Maungu', startLocation3: 'Mtito Andei', startLocation4: 'Emali', startLocation5: 'Machakos Junction', startLocation6: 'Salgaa',	startLocation7: 'Burnt Forest', startLocation8: 'Webuye',	startLocation9: 'Malaba border', startLocation10: 'Nakalama', startLocation11: 'Nakalama', startLocation12: 'Namanve', startLocation13: 'Maddu', startLocation14: 'Lyantonde', startLocation15: 'Rubaare Rest', startLocation16: 'Cyanika border', startLocation17: 'Gisenyi border', endLocation1: 'Maungu',endLocation2: 'Mtito Andei', endLocation3: 'Emali', endLocation4: 'Machakos Junction', endLocation5: 'Salgaa', endLocation6: 'Burnt Forest',endLocation7: 'Webuye', endLocation8: 'Malaba border', endLocation9: 'Nakalama', endLocation10: 'Nakalama', endLocation11: 'Namanve', endLocation12: 'Maddu', endLocation13: 'Lyantonde', endLocation14: 'Rubaare Rest', endLocation15: 'Cyanika border', endLocation16: 'Gisenyi border', endLocation17: 'Goma', startTime1: '0600', startTime2: '0945', startTime3: '1345',startTime4: '1700', startTime5: '0600', startTime6: '0945', startTime7: '13:15', startTime8: '1600', startTime9: '0600', startTime10: '0600', startTime11: '0915', startTime12: '1300', startTime13: '1700', startTime14: '0600', startTime15: '1030', startTime16: '0600', startTime17: '0600', endTime1: '0900',endTime2: '1245',endTime3: '1615',	endTime4: '1900', endTime5: '0900', endTime6: '1215', endTime7: '1515', endTime8: '1900', endTime9: '0730', endTime10: '0830', endTime11: '1200', endTime12: '1630', endTime13: '2000', endTime14: '0930', endTime15: '1430', endTime16: '0800', endTime17: '0630', driveTime1: '3:00:00', driveTime2: '3:00:00', driveTime3: '2:30:00', driveTime4: '2:00:00', driveTime5: '3:00:00', driveTime6: '2:30:00', driveTime7: '2:00:00', driveTime8: '3:00:00', driveTime9: '1:30:00', driveTime10: '02:30:00', driveTime11: '02:45:00', driveTime12: '03:30:00', driveTime13: '03:00:00', driveTime14: '03:30:00', driveTime15: '04:00:00', driveTime16: '02:00:00', driveTime17: '00:30:00', event1:'Tea Break', event2:'Lunch Stop', event3:'Evening Tea', event4:'Night Stop', event5:'Tea Break',event6:'Lunch Stop',event7:'Evening Tea', event8:'Night Stop', event9:'Border Point', event10:'Tea Break', event11:'Lunch Stop', event12:'Evening Tea', event13:'Night Stop', event14:'Tea Break', event15:'Border Point', event16:'Border Point', event17:'Offloading Site', event18:'', distance1:129, distance2:126, distance3:109, distance4:81, distance5:137, distance6:110, distance7:87, distance8:114, distance9:60, distance10:97, distance11:108, distance12:144, distance13:120, distance14:149, distance15:138, distance16:86, distance17:8, distance18:'' },
  { startPosition: 'Mombasa', startTime: '0600', endLocation: 'Kampala', startLocation1: 'PFK Msa Yard', startLocation2: 'Maungu', startLocation3: 'Mtito Andei', startLocation4: 'Emali', startLocation5: 'Machakos Junction', startLocation6: 'Salgaa',	startLocation7: 'Burnt Forest', startLocation8: 'Webuye',	startLocation9: 'Malaba border', startLocation10: 'Nakalama', startLocation11: '', startLocation12: '', startLocation13: '', startLocation14: '', startLocation15: '', startLocation16: '', startLocation17: '', endLocation1: 'Maungu',endLocation2: 'Mtito Andei', endLocation3: 'Emali', endLocation4: 'Machakos Junction', endLocation5: 'Salgaa', endLocation6: 'Burnt Forest',endLocation7: 'Webuye', endLocation8: 'Malaba border', endLocation9: 'Nakalama', endLocation10: 'Kampala', endLocation11: '', endLocation12: '', endLocation13: '', endLocation14: '', endLocation15: '', endLocation16: '', endLocation17: '', startTime1: '0600', startTime2: '0945', startTime3: '1345',startTime4: '1700', startTime5: '0600', startTime6: '0945', startTime7: '13:15', startTime8: '1600', startTime9: '0600', startTime10: '0600', startTime11: '', startTime12: '', startTime13: '', startTime14: '', startTime15: '', startTime16: '0600', startTime17: '', endTime1: '0900',endTime2: '1245',endTime3: '1615',	endTime4: '1900', endTime5: '0900', endTime6: '1215', endTime7: '1515', endTime8: '1900', endTime9: '0730', endTime10: '0900', endTime11: '', endTime12: '', endTime13: '', endTime14: '', endTime15: '', endTime16: '', endTime17: '', driveTime1: '3:00:00', driveTime2: '3:00:00', driveTime3: '2:30:00', driveTime4: '2:00:00', driveTime5: '3:00:00', driveTime6: '2:30:00', driveTime7: '2:00:00', driveTime8: '3:00:00', driveTime9: '1:30:00', driveTime10: '03:00:00', driveTime11: '', driveTime12: '', driveTime13: '', driveTime14: '', driveTime15: '', driveTime16: '', driveTime17: '', event1:'Tea Break', event2:'Lunch Stop', event3:'Evening Tea', event4:'Night Stop', event5:'Tea Break',event6:'Lunch Stop',event7:'Evening Tea', event8:'Night Stop', event9:'Border Point', event10:'Tea Break', event11:'', event12:'', event13:'', event14:'', event15:'', event16:'', event17:'', event18:'', distance1:129, distance2:126, distance3:109, distance4:81, distance5:137, distance6:110, distance7:87, distance8:114, distance9:60, distance10:121, distance11:'', distance12:'', distance13:'', distance14:'', distance15:'', distance16:'', distance17:'', distance18:'' },
  { startPosition: 'Mombasa', startTime: '1000', endLocation: 'Kampala', startLocation1: 'PFK Msa Yard', startLocation2: 'Maungu', startLocation3: 'Mtito Andei', startLocation4: 'Simba', startLocation5: 'Machakos Junction', startLocation6: 'Longonot', startLocation7: 'Salgaa Rest Stop', startLocation8: 'Burnt Forest', startLocation9: 'Webuye', startLocation10: 'Malaba Border', startLocation11: 'Nakalama', startLocation12: '', startLocation13: '', startLocation14: '', startLocation15: '', startLocation16: '', startLocation17: '', endLocation1: 'Maungu',endLocation2: 'Mtito Andei', endLocation3: 'Simba', endLocation4: 'Machakos Junction', endLocation5: 'Longonot', endLocation6: 'Salgaa Rest Stop',endLocation7: 'Burnt Forest', endLocation8: 'Webuye', endLocation9: 'Malaba Border', endLocation10: 'Nakalama', endLocation11: 'Kampala', endLocation12: '', endLocation13: '', endLocation14: '', endLocation15: '', endLocation16: '', endLocation17: '', startTime1: '1000', startTime2: '1400', startTime3: '1730',startTime4: '0600', startTime5: '0915', startTime6: '1330', startTime7: '1700', startTime8: '0600', startTime9: '0945', startTime10: '1145', startTime11: '0800', startTime12: '', startTime13: '', startTime14: '', startTime15: '', startTime16: '', startTime17: '', endTime1: '1300',endTime2: '1700',endTime3: '1730', endTime4: '0830', endTime5: '1245', endTime6: '1630', endTime7: '1900', endTime8: '0900', endTime9: '1145', endTime10: '0800', endTime11: '1145', endTime12: '', endTime13: '', endTime14: '', endTime15: '', endTime16: '', endTime17: '', driveTime1: '3:00', driveTime2: '3:00', driveTime3: '2:00', driveTime4: '2:30:00', driveTime5: '3:30:00', driveTime6: '3:00:00', driveTime7: '2:00:00', driveTime8: '3:00:00', driveTime9: '2:00:00', driveTime10: '02:00:00', driveTime11: '03:00:00', driveTime12: '', driveTime13: '', driveTime14: '', driveTime15: '', driveTime16: '', driveTime17: '', event1:'Lunch Break', event2:'Evening Break', event3:'Night Stop', event4:'Tea Break', event5:'Lunch Break',event6:'Evening Break',event7:'Night Stop', event8:'Tea Break', event9:'Border Stop', event10:'Tea Break', event11:'Offloading Point', event12:'', event13:'', event14:'', event15:'', event16:'', event17:'', event18:'', distance1:129, distance2:126, distance3:92, distance4:93, distance5:118, distance6:112, distance7:86, distance8:115, distance9:59, distance10:97, distance11:121, distance12:'', distance13:'', distance14:'', distance15:'', distance16:'', distance17:'', distance18:'' },
  { startPosition: 'Mombasa', startTime: '1200', endLocation: 'Kampala', startLocation1: 'PFK Msa Yard', startLocation2: 'Maungu', startLocation3: 'Mtito Andei', startLocation4: 'Salama', startLocation5: 'Mai Mahiu', startLocation6: 'Nakuru', startLocation7: 'Salgaa Rest Stop', startLocation8: 'Burnt Forest', startLocation9: 'Webuye', startLocation10: 'Malaba Border', startLocation11: 'Nakalama', startLocation12: '', startLocation13: '', startLocation14: '', startLocation15: '', startLocation16: '', startLocation17: '', endLocation1: 'Maungu',endLocation2: 'Mtito Andei', endLocation3: 'Salama', endLocation4: 'Mai Mahiu', endLocation5: 'Nakuru', endLocation6: 'Salgaa Rest Stop',endLocation7: 'Burnt Forest', endLocation8: 'Webuye', endLocation9: 'Malaba Border', endLocation10: 'Nakalama', endLocation11: 'Kampala', endLocation12: '', endLocation13: '', endLocation14: '', endLocation15: '', endLocation16: '', endLocation17: '', startTime1: '1200', startTime2: '1645', startTime3: '0600',startTime4: '1015', startTime5: '1415', startTime6: '1800', startTime7: '0600', startTime8: '0815', startTime9: '1215', startTime10: '0600', startTime11: '0845', startTime12: '', startTime13: '', startTime14: '', startTime15: '', startTime16: '', startTime17: '', endTime1: '1300',endTime2: '1700',endTime3: '1730', endTime4: '0830', endTime5: '1245', endTime6: '1630', endTime7: '1900', endTime8: '0900', endTime9: '1145', endTime10: '0800', endTime11: '1145', endTime12: '', endTime13: '', endTime14: '', endTime15: '', endTime16: '', endTime17: '', driveTime1: '4:00', driveTime2: '3:00:00', driveTime3: '3:30:00', driveTime4: '3:30:00', driveTime5: '2:30:00', driveTime6: '1:00:00', driveTime7: '1:30:00', driveTime8: '3:00:00', driveTime9: '2:00:00', driveTime10: '02:00:00', driveTime11: '03:00:00', driveTime12: '', driveTime13: '', driveTime14: '', driveTime15: '', driveTime16: '', driveTime17: '', event1:'Evening Break', event2:'Night Stop', event3:'Tea Break', event4:'Lunch Break', event5:'Evening Break',event6:'Night Stop',event7:'Tea Break', event8:'Lunch Break', event9:'Border Stop', event10:'Evening Break', event11:'Offloading Point', event12:'', event13:'', event14:'', event15:'', event16:'', event17:'', event18:'', distance1:129, distance2:126, distance3:146, distance4:142, distance5:105, distance6:29, distance7:88, distance8:114, distance9:59, distance10:97, distance11:121, distance12:'', distance13:'', distance14:'', distance15:'', distance16:'', distance17:'', distance18:'' },
  { startPosition: 'Mombasa', startTime: '1300', endLocation: 'Kampala', startLocation1: 'PFK Msa Yard', startLocation2: 'Maungu', startLocation3: 'Mtito Andei', startLocation4: 'Salama', startLocation5: 'Mai Mahiu', startLocation6: 'Nakuru', startLocation7: 'Salgaa Rest Stop', startLocation8: 'Burnt Forest', startLocation9: 'Webuye', startLocation10: 'Malaba Border', startLocation11: 'Nakalama', startLocation12: '', startLocation13: '', startLocation14: '', startLocation15: '', startLocation16: '', startLocation17: '', endLocation1: 'Maungu',endLocation2: 'Mtito Andei', endLocation3: 'Salama', endLocation4: 'Mai Mahiu', endLocation5: 'Nakuru', endLocation6: 'Salgaa Rest Stop',endLocation7: 'Burnt Forest', endLocation8: 'Webuye', endLocation9: 'Malaba Border', endLocation10: 'Nakalama', endLocation11: 'Kampala', endLocation12: '', endLocation13: '', endLocation14: '', endLocation15: '', endLocation16: '', endLocation17: '', startTime1: '1300', startTime2: '1645', startTime3: '0600',startTime4: '1015', startTime5: '1415', startTime6: '1800', startTime7: '0600', startTime8: '0815', startTime9: '1215', startTime10: '0600', startTime11: '0845', startTime12: '', startTime13: '', startTime14: '', startTime15: '', startTime16: '', startTime17: '', endTime1: '1600',endTime2: '1700',endTime3: '1730', endTime4: '0830', endTime5: '1245', endTime6: '1630', endTime7: '1900', endTime8: '0900', endTime9: '1145', endTime10: '0800', endTime11: '1145', endTime12: '', endTime13: '', endTime14: '', endTime15: '', endTime16: '', endTime17: '', driveTime1: '3:00', driveTime2: '3:00:00', driveTime3: '3:30:00', driveTime4: '3:30:00', driveTime5: '2:30:00',driveTime6: '1:00:00', driveTime7: '1:30:00', driveTime8: '3:00:00', driveTime9: '2:00:00', driveTime10: '02:00:00', driveTime11: '03:00:00', driveTime12: '', driveTime13: '', driveTime14: '', driveTime15: '', driveTime16: '', driveTime17: '', event1:'Evening Break', event2:'Night Stop', event3:'Tea Break', event4:'Lunch Break', event5:'Evening Break',event6:'Night Stop',event7:'Tea Break', event8:'Lunch Break', event9:'Border Stop', event10:'Evening Break', event11:'Offloading Point', event12:'', event13:'', event14:'', event15:'', event16:'', event17:'', event18:'', distance1:129, distance2:126, distance3:146, distance4:142, distance5:105, distance6:29, distance7:88, distance8:114, distance9:59, distance10:97, distance11:121, distance12:'', distance13:'', distance14:'', distance15:'', distance16:'', distance17:'', distance18:'' },
  { startPosition: 'Mombasa', startTime: '1400', endLocation: 'Kampala', startLocation1: 'PFK Msa Yard', startLocation2: 'Maungu', startLocation3: 'Voi', startLocation4: 'Mtito Andei', startLocation5: 'Sultan Hamud', startLocation6: 'Machakos Junction', startLocation7: 'Mai Mahiu', startLocation8: 'Londiani Junction', startLocation9: 'Cheptiret', startLocation10: 'Malaba Border', startLocation11: 'Nakalama', startLocation12: '', startLocation13: '', startLocation14: '', startLocation15: '', startLocation16: '', startLocation17: '', endLocation1: 'Maungu',endLocation2: 'Voi', endLocation3: 'Mtito Andei', endLocation4: 'Sultan Hamud', endLocation5: 'Machakos Junction', endLocation6: 'Mai Mahiu',endLocation7: 'Londiani Junction', endLocation8: 'Cheptiret', endLocation9: 'Malaba Border', endLocation10: 'Nakalama', endLocation11: 'Kampala', endLocation12: '', endLocation13: '', endLocation14: '', endLocation15: '', endLocation16: '', endLocation17: '', startTime1: '1400', startTime2: '1845', startTime3: '0600',startTime4: '0845', startTime5: '1315', startTime6: '1600', startTime7: '0600', startTime8: '1045', startTime9: '1345', startTime10: '0600', startTime11: '0915', startTime12: '', startTime13: '', startTime14: '', startTime15: '', startTime16: '', startTime17: '', endTime1: '1300',endTime2: '1700',endTime3: '1730', endTime4: '0830', endTime5: '1245', endTime6: '1630', endTime7: '1900', endTime8: '0900', endTime9: '1145', endTime10: '0800', endTime11: '1145', endTime12: '', endTime13: '', endTime14: '', endTime15: '', endTime16: '', endTime17: '', driveTime1: '4:00:00', driveTime2: '1:00:00', driveTime3: '2:00:00', driveTime4: '3:15:00', driveTime5: '2:00:00', driveTime6: '3:00:00', driveTime7: '4:00:00', driveTime8: '2:00:00', driveTime9: '4:00:00', driveTime10: '02:30:00', driveTime11: '03:00:00', driveTime12: '', driveTime13: '', driveTime14: '', driveTime15: '', driveTime16: '', driveTime17: '', event1:'Evening Break', event2:'Night Stop', event3:'Tea Break', event4:'Lunch Break', event5:'Evening Break',event6:'Night Stop',event7:'Tea Break', event8:'Lunch Break', event9:'Border Stop', event10:'Tea Break', event11:'Offloading Point', event12:'', event13:'', event14:'', event15:'', event16:'', event17:'', event18:'', distance1:93, distance2:32, distance3:96, distance4:123, distance5:64, distance6:103, distance7:163, distance8:91, distance9:152, distance10:97, distance11:121, distance12:'', distance13:'', distance14:'', distance15:'', distance16:'', distance17:'', distance18:'' },
  { startPosition: 'Mombasa', startTime: '1500', endLocation: 'Kampala', startLocation1: 'PFK Msa Yard', startLocation2: 'Maungu', startLocation3: 'Mtito Andei', startLocation4: 'Machakos Junction', startLocation5: 'Longonot', startLocation6: 'Nakuru', startLocation7: 'Burnt Forest', startLocation8: 'Webuye', startLocation9: 'Malaba Border', startLocation10: 'Nakalama', startLocation11: '', startLocation12: '', startLocation13: '', startLocation14: '', startLocation15: '', startLocation16: '', startLocation17: '', endLocation1: 'Maungu',endLocation2: 'Mtito Andei', endLocation3: 'Machakos Junction', endLocation4: 'Longonot', endLocation5: 'Nakuru', endLocation6: 'Burnt Forest',endLocation7: 'Webuye', endLocation8: 'Malaba Border', endLocation9: 'Nakalama', endLocation10: 'Kampala', endLocation11: '', endLocation12: '', endLocation13: '', endLocation14: '', endLocation15: '', endLocation16: '', endLocation17: '', startTime1: '1500', startTime2: '0600', startTime3: '0930',startTime4: '1430', startTime5: '1800', startTime6: '0600', startTime7: '0945', startTime8: '1345', startTime9: '0600', startTime10: '0845', startTime11: '', startTime12: '', startTime13: '', startTime14: '', startTime15: '', startTime16: '', startTime17: '', endTime1: '1900',endTime2: '0900',endTime3: '1330', endTime4: '1730', endTime5: '2000', endTime6: '0900', endTime7: '1245', endTime8: '1515', endTime9: '0800', endTime10: '1145', endTime11: '', endTime12: '', endTime13: '', endTime14: '', endTime15: '', endTime16: '', endTime17: '', driveTime1: '4:00:00', driveTime2: '3:00:00', driveTime3: '4:00:00', driveTime4: '3:00:00', driveTime5: '2:00:00', driveTime6: '3:00:00', driveTime7: '3:00:00', driveTime8: '1:30:00', driveTime9: '2:00:00', driveTime10: '03:00:00', driveTime11: '', driveTime12: '', driveTime13: '', driveTime14: '', driveTime15: '', driveTime16: '', driveTime17: '', event1:'Night Stop', event2:'Tea Break', event3:'Lunch Break', event4:'Evening Break', event5:'Night Stop',event6:'Tea Break',event7:'Lunch Break', event8:'Border Point', event9:'Evening Break', event10:'Offloading Point', event11:'', event12:'', event13:'', event14:'', event15:'', event16:'', event17:'', event18:'', distance1:129, distance2:126, distance3:186, distance4:121, distance5:86, distance6:116, distance7:114, distance8:59, distance9:97, distance10:121, distance11:'', distance12:'', distance13:'', distance14:'', distance15:'', distance16:'', distance17:'', distance18:'' },
  { startPosition: 'Mombasa', startTime: '1600', endLocation: 'Kampala', startLocation1: 'PFK Msa Yard', startLocation2: 'Maungu', startLocation3: 'Mtito Andei', startLocation4: 'Machakos Junction', startLocation5: 'Longonot', startLocation6: 'Nakuru', startLocation7: 'Burnt Forest', startLocation8: 'Webuye', startLocation9: 'Malaba Border', startLocation10: 'Nakalama', startLocation11: '', startLocation12: '', startLocation13: '', startLocation14: '', startLocation15: '', startLocation16: '', startLocation17: '', endLocation1: 'Maungu',endLocation2: 'Mtito Andei', endLocation3: 'Machakos Junction', endLocation4: 'Longonot', endLocation5: 'Nakuru', endLocation6: 'Burnt Forest',endLocation7: 'Webuye', endLocation8: 'Malaba Border', endLocation9: 'Nakalama', endLocation10: 'Kampala', endLocation11: '', endLocation12: '', endLocation13: '', endLocation14: '', endLocation15: '', endLocation16: '', endLocation17: '', startTime1: '1600', startTime2: '0600', startTime3: '0930',startTime4: '1430', startTime5: '1800', startTime6: '0600', startTime7: '0945', startTime8: '1345', startTime9: '0600', startTime10: '0845', startTime11: '', startTime12: '', startTime13: '', startTime14: '', startTime15: '', startTime16: '', startTime17: '', endTime1: '2000',endTime2: '0900',endTime3: '1330', endTime4: '1730', endTime5: '2000', endTime6: '0900', endTime7: '1245', endTime8: '1515', endTime9: '0800', endTime10: '1145', endTime11: '', endTime12: '', endTime13: '', endTime14: '', endTime15: '', endTime16: '', endTime17: '', driveTime1: '4:00:00', driveTime2: '3:00:00', driveTime3: '4:00:00', driveTime4: '3:00:00', driveTime5: '2:00:00', driveTime6: '3:00:00', driveTime7: '3:00:00', driveTime8: '1:30:00', driveTime9: '2:00:00', driveTime10: '03:00:00', driveTime11: '', driveTime12: '', driveTime13: '', driveTime14: '', driveTime15: '', driveTime16: '', driveTime17: '', event1:'Night Stop', event2:'Tea Break', event3:'Lunch Break', event4:'Evening Break', event5:'Night Stop',event6:'Tea Break',event7:'Lunch Break', event8:'Border Point', event9:'Evening Break', event10:'Offloading Point', event11:'', event12:'', event13:'', event14:'', event15:'', event16:'', event17:'', event18:'', distance1:129, distance2:126, distance3:186, distance4:121, distance5:86, distance6:116, distance7:114, distance8:59, distance9:97, distance10:121, distance11:'', distance12:'', distance13:'', distance14:'', distance15:'', distance16:'', distance17:'', distance18:'' },
  { startPosition: 'Mombasa', startTime: '1700', endLocation: 'Kampala', startLocation1: 'PFK Msa Yard', startLocation2: 'Maungu', startLocation3: 'Mtito Andei', startLocation4: 'Machakos Junction', startLocation5: 'Longonot', startLocation6: 'Nakuru', startLocation7: 'Burnt Forest', startLocation8: 'Webuye', startLocation9: 'Malaba Border', startLocation10: 'Nakalama', startLocation11: '', startLocation12: '', startLocation13: '', startLocation14: '', startLocation15: '', startLocation16: '', startLocation17: '', endLocation1: 'Maungu',endLocation2: 'Mtito Andei', endLocation3: 'Machakos Junction', endLocation4: 'Longonot', endLocation5: 'Nakuru', endLocation6: 'Burnt Forest',endLocation7: 'Webuye', endLocation8: 'Malaba Border', endLocation9: 'Nakalama', endLocation10: 'Kampala', endLocation11: '', endLocation12: '', endLocation13: '', endLocation14: '', endLocation15: '', endLocation16: '', endLocation17: '', startTime1: '1700', startTime2: '0600', startTime3: '0930',startTime4: '1430', startTime5: '1800', startTime6: '0600', startTime7: '0945', startTime8: '1345', startTime9: '0600', startTime10: '0845', startTime11: '', startTime12: '', startTime13: '', startTime14: '', startTime15: '', startTime16: '', startTime17: '', endTime1: '2000',endTime2: '0900',endTime3: '1330', endTime4: '1730', endTime5: '2000', endTime6: '0900', endTime7: '1245', endTime8: '1515', endTime9: '0800', endTime10: '1145', endTime11: '', endTime12: '', endTime13: '', endTime14: '', endTime15: '', endTime16: '', endTime17: '', driveTime1: '3:00:00', driveTime2: '3:00:00', driveTime3: '4:00:00', driveTime4: '3:00:00', driveTime5: '2:00:00', driveTime6: '3:00:00', driveTime7: '3:00:00', driveTime8: '1:30:00', driveTime9: '2:00:00', driveTime10: '03:00:00', driveTime11: '', driveTime12: '', driveTime13: '', driveTime14: '', driveTime15: '', driveTime16: '', driveTime17: '', event1:'Night Stop', event2:'Tea Break', event3:'Lunch Break', event4:'Evening Break', event5:'Night Stop',event6:'Tea Break',event7:'Lunch Break', event8:'Border Point', event9:'Evening Break', event10:'Offloading Point', event11:'', event12:'', event13:'', event14:'', event15:'', event16:'', event17:'', event18:'', distance1:129, distance2:126, distance3:186, distance4:121, distance5:86, distance6:116, distance7:114, distance8:59, distance9:97, distance10:121, distance11:'', distance12:'', distance13:'', distance14:'', distance15:'', distance16:'', distance17:'', distance18:'' },
  


]

templates_to_seed.each do |template_params|
    # Check if a template with the same criteria already exists
    existing_template = Finaltable.find_by(startPosition: template_params[:startPosition], startTime: template_params[:startTime], endLocation: template_params[:endLocation])
  
    if existing_template.nil?
      # Create a new Finaltable record if it doesn't exist
      template = Finaltable.new
  
  
      # Set attributes based on the template_params hash
      template.startPosition = template_params[:startPosition]
      template.startTime = template_params[:startTime]
      template.endLocation = template_params[:endLocation]
      
template.startLocation1 = template_params[:startLocation1]
 template.startLocation2 = template_params[:startLocation2]
 template.startLocation3 = template_params[:startLocation3]
  template.startLocation4 = template_params[:startLocation4]
   template.startLocation5 = template_params[:startLocation5]
    template.startLocation6 = template_params[:startLocation6]
     template.startLocation7 = template_params[:startLocation7] 
     template.startLocation8 = template_params[:startLocation8] 
     template.startLocation9 = template_params[:startLocation9] 
     template.startLocation10 = template_params[:startLocation10]
      template.startLocation11 = template_params[:startLocation11]
       template.startLocation12 = template_params[:startLocation12]
        template.startLocation13 = template_params[:startLocation13]
         template.startLocation14 = template_params[:startLocation14] 
         template.startLocation15 = template_params[:startLocation15]
          template.startLocation16 = template_params[:startLocation16]
           template.startLocation17 = template_params[:startLocation17]
template.endLocation1 = template_params[:endLocation1] 
template.endLocation2 = template_params[:endLocation2]
 template.endLocation3 = template_params[:endLocation3]
  template.endLocation4 = template_params[:endLocation4] 
  template.endLocation5 = template_params[:endLocation5] 
  template.endLocation6 = template_params[:endLocation6]
   template.endLocation7 = template_params[:endLocation7]
    template.endLocation8 = template_params[:endLocation8]
     template.endLocation9 = template_params[:endLocation9]
      template.endLocation10 = template_params[:endLocation10]
       template.endLocation11 = template_params[:endLocation11]
        template.endLocation12 = template_params[:endLocation12]
         template.endLocation13 = template_params[:endLocation13]
          template.endLocation14 = template_params[:endLocation14] 
          template.endLocation15 = template_params[:endLocation15]
           template.endLocation16 = template_params[:endLocation16]
            template.endLocation17 = template_params[:endLocation17]
template.startTime1 = template_params[:startTime1]
 template.startTime2 = template_params[:startTime2]
  template.startTime3 = template_params[:startTime3]
   template.startTime4 = template_params[:startTime4]
    template.startTime5 = template_params[:startTime5] 
    template.startTime6 = template_params[:startTime6] 
    template.startTime7 = template_params[:startTime7]
     template.startTime8 = template_params[:startTime8] 
     template.startTime9 = template_params[:startTime9] 
     template.startTime10 = template_params[:startTime10]
      template.startTime11 = template_params[:startTime11]
       template.startTime12 = template_params[:startTime12]
        template.startTime13 = template_params[:startTime13]
         template.startTime14 = template_params[:startTime14]
          template.startTime15 = template_params[:startTime15]
           template.startTime16 = template_params[:startTime16]
            template.startTime17 = template_params[:startTime17]
template.endTime1 = template_params[:endTime1]
 template.endTime2 = template_params[:endTime2]
  template.endTime3 = template_params[:endTime3]
   template.endTime4 = template_params[:endTime4] 
   template.endTime5 = template_params[:endTime5] 
   template.endTime6 = template_params[:endTime6] 
   template.endTime7 = template_params[:endTime7] 
   template.endTime8 = template_params[:endTime8] 
   template.endTime9 = template_params[:endTime9] 
   template.endTime10 = template_params[:endTime10] 
   template.endTime11 = template_params[:endTime11] 
   template.endTime12 = template_params[:endTime12]
    template.endTime13 = template_params[:endTime13]
     template.endTime14 = template_params[:endTime14] 
     template.endTime15 = template_params[:endTime15]
      template.endTime16 = template_params[:endTime16]
       template.endTime17 = template_params[:endTime17]
template.driveTime1 = template_params[:driveTime1] 
template.driveTime2 = template_params[:driveTime2] 
template.driveTime3 = template_params[:driveTime3] 
template.driveTime4 = template_params[:driveTime4] 
template.driveTime5 = template_params[:driveTime5] 
template.driveTime6 = template_params[:driveTime6] 
template.driveTime7 = template_params[:driveTime7] 
template.driveTime8 = template_params[:driveTime8] 
template.driveTime9 = template_params[:driveTime9] 
template.driveTime10 = template_params[:driveTime10] 
template.driveTime11 = template_params[:driveTime11] 
template.driveTime12 = template_params[:driveTime12] 
template.driveTime13 = template_params[:driveTime13] 
template.driveTime14 = template_params[:driveTime14] 
template.driveTime15 = template_params[:driveTime15] 
template.driveTime16 = template_params[:driveTime16] 
template.driveTime17 = template_params[:driveTime17]
template.event1 = template_params[:event1] 
template.event2 = template_params[:event2]
 template.event3 = template_params[:event3] 
 template.event4 = template_params[:event4] 
 template.event5 = template_params[:event5] 
 template.event6 = template_params[:event6]
  template.event7 = template_params[:event7]
   template.event8 = template_params[:event8]
    template.event9 = template_params[:event9]
     template.event10 = template_params[:event10]
      template.event11 = template_params[:event11]
       template.event12 = template_params[:event12]
        template.event13 = template_params[:event13]
         template.event14 = template_params[:event14]
          template.event15 = template_params[:event15]
           template.event16 = template_params[:event16]
            template.event17 = template_params[:event17]
template.distance1 = template_params[:distance1]
 template.distance2 = template_params[:distance2] 
 template.distance3 = template_params[:distance3] 
 template.distance4 = template_params[:distance4] 
 template.distance5 = template_params[:distance5] 
 template.distance6 = template_params[:distance6] 
 template.distance7 = template_params[:distance7] 
 template.distance8 = template_params[:distance8] 
 template.distance9 = template_params[:distance9] 
 template.distance10 = template_params[:distance10]
  template.distance11 = template_params[:distance11]
   template.distance12 = template_params[:distance12]
    template.distance13 = template_params[:distance13]
     template.distance14 = template_params[:distance14]
      template.distance15 = template_params[:distance15] 
      template.distance16 = template_params[:distance16] 
      template.distance17 = template_params[:distance17]
  
      # Save the template to the database
      template.save

      puts "Created template: #{template_params}"
    else
      puts "Template already exists: #{template_params}"
    end
  end