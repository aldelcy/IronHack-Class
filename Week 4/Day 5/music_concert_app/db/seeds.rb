# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

time = (Time.zone.now)-4.hours

Concert.create( name:'Avicii Word Tour', artist:'Avicii', city:'Tampa', venue:'Oreo Plaza', description:'Avicii gets a new hit that will make everyone hate radio after the 2000th time they play his song.', date:time+2.hours, price:'20.00' )
Concert.create( name:'White Rappers Unite', artist:'Eminem (ft. Maklemore)', city:'Miami', venue:'Pizza Plaza', description:'Eminem and Maklemore team up to launch an exclusive music player for white rapper lovers only.', date:time+1.day, price:'15.00' )
Concert.create( name:'Concert #1056', artist:'Beyonce', city:'Atlanta', venue:'Club Fifty', description:'Beyonce church of crazy black women', date:time+1.hour, price:'30.50' )
Concert.create( name:'Sony Redemption Tour', artist:'Ke$ha', city:'Tampa', venue:'Tootsies', description:'i\'m not even gonna make that joke. that\'s messed up.', date:time+26.hours, price:'20.00' )
Concert.create( name:'Comeback Tour', artist:'Jamie Foxx', city:'Orlando', venue:'Flagler Galleria', description:'Jamie Fox gets lost and finds himself on a stage with a mic, now I heard he\'s on a tour. I guess we should go see this trainwreck', date:time+3.days+2.hours, price:'15.00' )
Concert.create( name:'Afro Tour', artist:'Bianca Semprit', city:'Miami', venue:'Marlon Stadium', description:'Gamers rap at it\'s best.', date:time-1.hour, price:'12.45' )


Comment.create( user_name:'Al Delcy', comment:'This the best concert I\'ve been to hands down', concert_id: 6 )
Comment.create( user_name:'Al Delcy', comment:'This the WORST concert I\'ve been to hands down', concert_id: 4 )
Comment.create( user_name:'Al Delcy', comment:'This was actually surprisingly good', concert_id: 5 )