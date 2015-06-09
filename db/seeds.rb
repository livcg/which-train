# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

station = Station.create([{ name: 'Arncliffe', minsFromHome: 10 }, { name: 'Wolli Creek', minsFromHome: 15 }])

traintrip = Traintrip.create([{ station_id: 1, trainleavesat: "8:23" },
                              { station_id: 1, trainleavesat: "8:33" },
                              { station_id: 1, trainleavesat: "8:43" },
                              { station_id: 1, trainleavesat: "8:53" },
                              { station_id: 1, trainleavesat: "9:03" },
                              { station_id: 1, trainleavesat: "9:13" },
                              { station_id: 1, trainleavesat: "9:23" },
                              { station_id: 1, trainleavesat: "9:33" },
                              { station_id: 1, trainleavesat: "9:43" },
                              { station_id: 1, trainleavesat: "10:03" },
                              { station_id: 1, trainleavesat: "10:03" },
                              { station_id: 1, trainleavesat: "10:33" }])
                               
traintrip = Traintrip.create([{ station_id: 2, trainleavesat: "8:26" },
                              { station_id: 2, trainleavesat: "8:29" },
                              { station_id: 2, trainleavesat: "8:32" },
                              { station_id: 2, trainleavesat: "8:36" },
                              { station_id: 2, trainleavesat: "8:39" },
                              { station_id: 2, trainleavesat: "8:43" },
                              { station_id: 2, trainleavesat: "8:46" },
                              { station_id: 2, trainleavesat: "8:49" },
                              { station_id: 2, trainleavesat: "8:52" },
                              { station_id: 2, trainleavesat: "8:56" },
                              { station_id: 2, trainleavesat: "8:59" },
                              { station_id: 2, trainleavesat: "9:03" },
                              { station_id: 2, trainleavesat: "9:06" },
                              { station_id: 2, trainleavesat: "9:09" },
                              { station_id: 2, trainleavesat: "9:12" },
                              { station_id: 2, trainleavesat: "9:16" },
                              { station_id: 2, trainleavesat: "9:19" },
                              { station_id: 2, trainleavesat: "9:23" },
                              { station_id: 2, trainleavesat: "9:26" },
                              { station_id: 2, trainleavesat: "9:29" },
                              { station_id: 2, trainleavesat: "9:36" },
                              { station_id: 2, trainleavesat: "9:42" },
                              { station_id: 2, trainleavesat: "9:46" },
                              { station_id: 2, trainleavesat: "9:57" },
                              { station_id: 2, trainleavesat: "10:06" },
                              { station_id: 2, trainleavesat: "10:17" },
                              { station_id: 2, trainleavesat: "10:27" },
                              { station_id: 2, trainleavesat: "10:36" },
                              { station_id: 2, trainleavesat: "10:47" }])                              
