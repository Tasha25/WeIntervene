# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ServiceCategory.create(name: 'Parent outreach')
ServiceCategory.create(name: 'Intervention by Counseling')
ServiceCategory.create(name: 'Guidance conference')
ServiceCategory.create(name: 'Restorative Approaches')
ServiceCategory.create(name: 'Mentoring Programs')
ServiceCategory.create(name: 'Peer Mediation')

ServiceProvider.create(name: 'Madison Square Boys & Girls Club',mission: 'The mission of Madison Square Boys & Girls Club is to save and enhance the lives of New York City boys and girls who by means of economic and/or social factors are most in need of its services.',image_url: 'http://www.chrisdraftfamilyfoundation.org/tools/events/files/madison-square-boys-and-girls-club-golf_rs-1.jpg',website: 'http://www.madisonsquare.org/site/PageServer',email: 'jpatuleia@madisonsquare.org',street1: '317 Madison Avenue, Suite 1110',street2: '',city: 'New York',state:'NY',zip_code: '10017',work_phone: '(212) 760-9600',fax: '',infraction_supported: '',other: ''
)

ServiceProvider.create( name: 'Hidden Gems Archery' , mission: 'to bring archery to the masses', image_url:'http://www.hiddengemsarchery.com/wp-content/uploads/2013/02/cropped-Screen-Shot-2013-02-12-at-11.45.43-AM-e1360885247611.png',website: 'http://www.hiddengemsarchery.com/', email: 'info@thehiddengems.com', street1: '180 Remson Street', street2: '', city:'Bronx', state:'NY', zip_code:'10469', work_phone:'254-247-4477', fax:'', infraction_supported:'',other:'',
)

ServiceProvider.create( name: 'Cardinal McCloskey' , mission: 'Our At-Risk Services’ mission is to promote a safe and nurturing environment for at-risk children and youth and the goal is to keep children safe, prevent abuse and strengthen biological families.', image_url: '', website: 'http://www.cmcs.org/', email: 'MHess@cmcs.org', street1: '953 Southern Blvd.', street2: 'Room 303', city:'Bronx', state:'NY', zip_code:'10459', work_phone:'718-542-0255', fax:'', infraction_supported:'', other:'',
)


DisciplinaryResponse.create(code: 'G', name:'Principal\'s Suspension', description:'This can be 5 days or less')
DisciplinaryResponse.create(code: 'H', name:'Superintendent\'s suspension', description:'This will result in immediate reinstatement')
DisciplinaryResponse.create(code: 'E', name:'Detention', description:'Student comes after school or before school')


GuidanceIntervention.create(name: 'Parent Outreach', description: 'Ask parents to come in ')
GuidanceIntervention.create(name: 'Intervention by Counseling staff', description: 'Talk to student in depth')
GuidanceIntervention.create(name: 'Guidance conference', description: 'A detail conference with support services')
GuidanceIntervention.create(name: 'Positive Behavioral Intervention', description: ' A multi-step approach to reconnect the child')


Infraction.create(code: 'B33', description: 'Engaging in sexual conduct on school premises or at school-related functions')
Infraction.create(code: 'B36', description: 'Engaging in physical aggressive behavior other than minor altercations as described under B24')
Infraction.create(code: 'B40', description: 'Possessing controlled substances or prescription medications without appropriate authorization')