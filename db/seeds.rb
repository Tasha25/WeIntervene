#encoding: utf-8

SchoolSystem.delete_all
SchoolDistrict.delete_all
School.delete_all
User.delete_all
Role.delete_all
ServiceCategory.delete_all
IncidentLog.delete_all
Student.delete_all
Parent.delete_all
DisciplinaryResponse.delete_all
GuidanceIntervention.delete_all
Infraction.delete_all
ServiceProvider.delete_all

SchoolSystem.create(name: 'NYCDOE', contact_person: 'Yolanda Smith ', contact_email: 'ysmith@nycdoe.com', street1: ' 100 Lane',city: 'Bx', state: 'NY', zip_code: '11201', phone: '2123456789')
SchoolSystem.create(name: 'Long Island', contact_person: 'Phil Smith ', contact_email: 'psmith@lidoe.com', street1: ' 200 Lane',city: 'Nassau', state: 'NY', zip_code: '10056', phone: '5163456789')


SchoolDistrict.create(name: 'District 10', contact_person: 'Don Lie', school_system_id: '1' )
SchoolDistrict.create(name: 'District 10', contact_person: 'Jon New', school_system_id: '1' )
SchoolDistrict.create(name: 'District 11', contact_person: 'Harry Tall', school_system_id: '2' )


School.create(name:'DWCHS', mission:' sine labore nihil', school_district_id: '2')
School.create(name:'JFK', mission:' we have fun', school_district_id: '3')


u1 = User.create(user_name: "ngreen", email: "ngreen@schools.nyc", school_id: '1', service_provider_id: '2', password: '123456', password_confirmation: '123456')
u2 = User.create(user_name: "mcollins", email: "mcollins@schools.nyc", school_id: '1', service_provider_id: '2', password: '123456', password_confirmation: '123456')
u3 = User.create(user_name: "wclarke", email: "wclarke@schools.nyc", school_id: '2', service_provider_id: '3', password: '123456', password_confirmation: '123456')
u4 = User.create(user_name: "mclarke", email: "mclarke@schools.nyc", school_id: '2', service_provider_id: '3', password: '123456', password_confirmation: '123456')
u5 = User.create(user_name: "jhilton", email: "jhilton@schools.nyc", school_id: '2', service_provider_id: '', password: '123456', password_confirmation: '123456')

Role.create(title: "teacher")
Role.create(title: "parent")
Role.create(title: "social worker")
Role.create(title: "dean")
Role.create(title: "principal")


u1.roles << Role.all[0]
u2.roles << Role.all[1]
u3.roles << Role.all[2]
u5.roles << Role.all[1]

 ServiceCategory.create(name: 'Parent outreach')
 ServiceCategory.create(name: 'Intervention by Counseling')
 ServiceCategory.create(name: 'Guidance conference')
 ServiceCategory.create(name: 'Restorative Approaches')
 ServiceCategory.create(name: 'Mentoring Programs')
 ServiceCategory.create(name: 'Peer Mediation')


inc1 = IncidentLog.create( comment: 'Student needs mediation', user_id: '3' , student_id: '1' )
inc2 = IncidentLog.create( comment: 'Student needs behaviour contract', user_id: '3' , student_id: '2' )
inc3 = IncidentLog.create( comment: 'love issues, fight with girlfriend', user_id: '2' , student_id: '3' )
inc4 = IncidentLog.create( comment: 'peer mediation - group', user_id: '1' , student_id: '3' )
inc1 = IncidentLog.create(comment:'Student had fight with another student', student_id:'3', user_id:'1')
inc2 = IncidentLog.create(comment:'Student had verbal with another student', student_id:'1', user_id:'3')
inc3 = IncidentLog.create(comment:'Student had tagged up bathroom', student_id:'2', user_id:'4')
inc4 = IncidentLog.create(comment:'Student invovled in gang activity', student_id:'3', user_id:'4')



s1 = ServiceProvider.create( name: 'Hidden Gems Archery' , mission: 'to bring archery to the masses', image_url:'http://www.hiddengemsarchery.com/wp-content/uploads/2013/02/cropped-Screen-Shot-2013-02-12-at-11.45.43-AM-e1360885247611.png',website: 'http://www.hiddengemsarchery.com/', contact_person: 'q', contact_email:'q@hga@aol.com', providers_email: 'info@thehiddengems.com', street1: '180 Remson Street', street2: '', city:'Bronx', state:'NY', zip_code:'10469', work_phone:'254-247-4477', fax:'', infraction_supported:'',other:'')
s2 = ServiceProvider.create( name: 'Cardinal McCloskey' , mission: 'Our At-Risk Services’ mission is to promote a safe and nurturing environment for at-risk children and youth and the goal is to keep children safe, prevent abuse and strengthen biological families.', image_url: '', website: 'http://www.cmcs.org/', contact_person: 'cardinal', contact_email:'cardinal@hga@aol.com', providers_email: 'MHess@cmcs.org', street1: '953 Southern Blvd.', street2: 'Room 303', city:'Bronx', state:'NY', zip_code:'10459', work_phone:'718-542-0255', fax:'', infraction_supported:'', other:'')
s3 = ServiceProvider.create( name: 'Boys and Girls' , mission: 'to bring archery to the masses', image_url:'http://www.hiddengemsarchery.com/wp-content/uploads/2013/02/cropped-Screen-Shot-2013-02-12-at-11.45.43-AM-e1360885247611.png',website: 'http://www.hiddengemsarchery.com/', contact_person: 'q', contact_email:'q@hga@aol.com', providers_email: 'info@thehiddengems.com', street1: '180 Remson Street', street2: '', city:'Bronx', state:'NY', zip_code:'10469', work_phone:'254-247-4477', fax:'', infraction_supported:'',other:'')
s4 = ServiceProvider.create( name: 'YMCA' , mission: 'Our At-Risk Services’ mission is to promote a safe and nurturing environment for at-risk children and youth and the goal is to keep children safe, prevent abuse and strengthen biological families.', image_url: '', website: 'http://www.cmcs.org/', contact_person: 'cardinal', contact_email:'cardinal@hga@aol.com', providers_email: 'MHess@cmcs.org', street1: '953 Southern Blvd.', street2: 'Room 303', city:'Bronx', state:'NY', zip_code:'10459', work_phone:'718-542-0255', fax:'', infraction_supported:'', other:'')

s1.service_categories << ServiceCategory.all[0]
s2.service_categories << ServiceCategory.all[1]
s3.service_categories << ServiceCategory.all[2]
s4.service_categories << ServiceCategory.all[3]

stud1 = Student.create(image_url: 'http://api.randomuser.me/0.2/portraits/men/20.jpg', first_name: 'John', last_name: 'Doe', identification_number: '123456789',  date_of_birth: '12/13/99', school_id:'1', email: 'student@gmail.com', street1: ' 123 Main Street', street2: '', city: 'Bronx', zip_code: '10469', phone:'718-231-1000', cell_phone:'646-1000',  counselor: 'Ms.Nice', cohort: '2018', grade_level: '9')

stud2 = Student.create(image_url: 'http://api.randomuser.me/?seed=goldenFrog',first_name: 'Clarissa', last_name: 'Burke', identification_number: '11122233', date_of_birth: '1/19/98', school_id:'1',email: 'student@gmail.com', street1: ' 123 Main Street', street2: '', city: 'Bronx', zip_code: '10469', phone:'718-231-1000', cell_phone:'646-1000',  counselor: 'Ms.Nice', cohort: '2017', grade_level: '10')

stud3 = Student.create(image_url: 'http://api.randomuser.me/?seed=smallSnake', first_name: 'Tom', last_name: 'Hanks', identification_number: '237849679', date_of_birth: '2/10/97', school_id:'2', email: 'student@gmail.com', street1: ' 123 Main Street', street2: '', city: 'Bronx', zip_code: '10469', phone:'718-231-1000', cell_phone:'646-1000', counselor: 'Ms.Nice', cohort: '2016', grade_level: '11')

Parent.create(first_name: 'Harold', last_name: 'Doe', street1: '900 Broadway', work_phone: '234564662', email: 'harold@gmail.com')
Parent.create(first_name: 'Fiona', last_name: 'Taylor', street1: '901 Broadway', work_phone: '12233234', email: 'fiona@gmail.com')
Parent.create(first_name: 'Lizzie', last_name: 'Salt',street1: '902 Broadway', work_phone: '99989888', email:'lizzie@gmail.com')
Parent.create(first_name: 'Tilla', last_name: 'Doe', street1: '903 Broadway', work_phone: '234564662')

r1 = Referral.create( comment: 'Student needs some help with anger issues', user_id: '4' , student_id: '2' )
r2 = Referral.create( comment: 'Student needs counseling', user_id: '4' , student_id: '3' )
r3 = Referral.create( comment: 'gang intervention', user_id: '2' , student_id: '1' )
r4 = Referral.create( comment: 'gang leader', user_id: '1' , student_id: '3' )




dr1 = DisciplinaryResponse.create(code: 'G', name:'Principal\'s Suspension', description:'This can be 5 days or less')
dr2 = DisciplinaryResponse.create(code: 'H', name:'Superintendent\'s suspension', description:'This will result in immediate reinstatement')
dr3 = DisciplinaryResponse.create(code: 'E', name:'Detention', description:'Student comes after school or before school')


gi1 = GuidanceIntervention.create(name: 'Parent Outreach', description: 'Ask parents to come in ')
gi2 = GuidanceIntervention.create(name: 'Intervention by Counseling staff', description: 'Talk to student in depth')
gi3 = GuidanceIntervention.create(name: 'Guidance conference', description: 'A detail conference with support services')
gi4 = GuidanceIntervention.create(name: 'Positive Behavioral Intervention', description: ' A multi-step approach to reconnect the child')


Infraction.create(code: 'B33', description: 'Engaging in sexual conduct on school premises or at school-related functions')
Infraction.create(code: 'B36', description: 'Engaging in physical aggressive behavior other than minor altercations as described under B24')
Infraction.create(code: 'B40', description: 'Possessing controlled substances or prescription medications without appropriate authorization')



r1.service_providers << ServiceProvider.all[0]
r2.service_providers << ServiceProvider.all[1]
r3.service_providers << ServiceProvider.all[2]
r4.service_providers << ServiceProvider.all[3]

s1.infractions << Infraction.all[0]
s2.infractions << Infraction.all[1]
s3.infractions << Infraction.all[2]
s4.infractions << Infraction.all[0]

inc1.infractions << Infraction.all[0]
inc2.infractions << Infraction.all[1]
inc3.infractions << Infraction.all[2]
inc4.infractions << Infraction.all[2]

stud1.parents << Parent.all[0]
stud2.parents << Parent.all[1]
stud3.parents << Parent.all[2]


inc1.guidance_interventions << GuidanceIntervention.all[0]
inc2.guidance_interventions << GuidanceIntervention.all[1]
inc3.guidance_interventions << GuidanceIntervention.all[2]
inc4.guidance_interventions << GuidanceIntervention.all[1]

inc1.disciplinary_responses << DisciplinaryResponse.all[0]
inc2.disciplinary_responses << DisciplinaryResponse.all[2]
inc3.disciplinary_responses << DisciplinaryResponse.all[1]
inc4.disciplinary_responses << DisciplinaryResponse.all[1]


# # ids = ServiceProvider.all

# #  ids.each_index do |index|
# #   infraction = []
# #   infraction << Infraction.all[index]
# #   infraction.each_index do |incident_log|
# #     incident_log = []
# #     incident_log << [IncidentLog.all[index]]
# #     print infraction
# #     end
# #   end


