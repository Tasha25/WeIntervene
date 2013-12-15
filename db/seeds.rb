# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

SchoolSystem.create(name: 'NYCDOE', contact_person: 'Yolanda Smith ', contact_email: 'ysmith@nycdoe.com', street1: ' 100 Lane',city: 'Bx', state: 'NY', zip_code: '11201', phone: '2123456789');
SchoolSystem.create(name: 'Long Island', contact_person: 'Phil Smith ', contact_email: 'psmith@lidoe.com', street1: ' 200 Lane',city: 'Nassau', state: 'NY', zip_code: '10056', phone: '5163456789');


SchoolDistrict.create(name: 'District 10', contact_person: 'Don Lie', school_system_id: 1 );
SchoolDistrict.create(name: 'District 10', contact_person: 'Jon New', school_system_id: 1 );
SchoolDistrict.create(name: 'District 11', contact_person: 'Harry Tall', school_system_id: 2 );


School.create(name:'DWCHS', mission:' sine labore nihil', school_district_id: '2') ;
School.create(name:'JFK', mission:' we have fun', school_district_id: '3')


User.create(user_name: "ngreen", email: "ngreen@schools.nyc", school_id: '1', service_provider_id: '') ;
User.create(user_name: "mcollins", email: "mcollins@schools.nyc", school_id: '1', service_provider_id: '');
User.create(user_name: "wclarke", email: "wclarke@schools.nyc", school_id: '', service_provider_id: '5');

Role.create(title: "teacher");
Role.create(title: "parent");
Role.create(title: "social worker");
Role.create(title: "dean");
Role.create(title: "principal");

RolesUsers.create( role_id: '1', user_id: '1');
RolesUsers.create( role_id: '2', user_id: '1');
RolesUsers.create( role_id: '4', user_id: '2');
RolesUsers.create( role_id: '3', user_id: '2');

ServiceCategory.create(name: 'Parent outreach')
ServiceCategory.create(name: 'Intervention by Counseling')
ServiceCategory.create(name: 'Guidance conference')
ServiceCategory.create(name: 'Restorative Approaches')
ServiceCategory.create(name: 'Mentoring Programs')
ServiceCategory.create(name: 'Peer Mediation')

IncidentLogs.create()



ServiceProvider.create(name: 'Madison Square Boys & Girls Club',mission: 'The mission of Madison Square Boys & Girls Club is to save and enhance the lives of New York City boys and girls who by means of economic and/or social factors are most in need of its services.',image_url: 'http://www.chrisdraftfamilyfoundation.org/tools/events/files/madison-square-boys-and-girls-club-golf_rs-1.jpg',website: 'http://www.madisonsquare.org/site/PageServer',email: 'jpatuleia@madisonsquare.org',street1: '317 Madison Avenue, Suite 1110',street2: '',city: 'New York',state:'NY',zip_code: '10017',work_phone: '(212) 760-9600',fax: '',infraction_supported: '',other: ''
)

ServiceProvider.create( name: 'Hidden Gems Archery' , mission: 'to bring archery to the masses', image_url:'http://www.hiddengemsarchery.com/wp-content/uploads/2013/02/cropped-Screen-Shot-2013-02-12-at-11.45.43-AM-e1360885247611.png',website: 'http://www.hiddengemsarchery.com/', providers_email: 'info@thehiddengems.com', street1: '180 Remson Street', street2: '', city:'Bronx', state:'NY', zip_code:'10469', work_phone:'254-247-4477', fax:'', infraction_supported:'',other:'',
)
ServiceProvider.create( name: 'Cardinal McCloskey' , mission: 'Our At-Risk Services’ mission is to promote a safe and nurturing environment for at-risk children and youth and the goal is to keep children safe, prevent abuse and strengthen biological families.', image_url: '', website: 'http://www.cmcs.org/', providers_email: 'MHess@cmcs.org', street1: '953 Southern Blvd.', street2: 'Room 303', city:'Bronx', state:'NY', zip_code:'10459', work_phone:'718-542-0255', fax:'', infraction_supported:'', other:'',
)

Student.create(first_name: 'John', last_name: 'Doe', identification_number: '123456789', date_of_birth: '12/13/99', school_id:'1')
Student.create(first_name: 'Clarissa', last_name: 'Burke', identification_number: '11122233', date_of_birth: '1/19/98', school_id:'1')
Student.create(first_name: 'Tom', last_name: 'Hanks', identification_number: '237849679', date_of_birth: '2/10/97', school_id:'2')

Referral.create( comment: 'Student needs some help with anger issues', user_id: '1' , student_id: '2' )
Referral.create( comment: 'Student needs counseling', user_id: '1' , student_id: '3' )
Referral.create( comment: 'gang intervention', user_id: '2' , student_id: '1' )
Referral.create( comment: 'peer mediation', user_id: '1' , student_id: '1' )

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