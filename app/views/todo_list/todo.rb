02/06/14

Change the User migration file to

class UsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password_digest
      t.string :email
      t.integer :school_id
      t.integer :service_provider_id
      t.timestamps
    end
  end
end


User.rb might have something that looks like this:

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :user_name, :school_id, :service_provider_id
  attr_accessor :password

   has_many :referrals
   belongs_to :school
   has_many :incident_logs
   has_and_belongs_to_many :roles
   has_many :students, through: :schools
end


Adding gender to students you can do the following:

  Delete migration file

Add the following to migration file
class StudentsTable < ActiveRecord::Migration
    def change
    create_table :students do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :suffix
      t.string :identification_number
      t.string :date_of_birth
      t.integer :school_id
      t.string :image_url
      t.string :email
      t.string :street1
      t.string :street2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone
      t.string :cell_phone
      t.string :counselor
      t.string :grade_level
      t.string :offical
      t.string :cohort
      t.string :gender
      t.timestamps
    end
  end
end


  Change the student.rb file to

class Student < ActiveRecord::Base

  attr_accessible :image_url, :first_name, :middle_name, :last_name, :suffix, :identification_number, :date_of_birth, :school_id, :email, :street1, :street2, :city, :state, :zip_code, :phone, :cell_phone, :counselor, :cohort, :grade_level

  belongs_to :school
  has_and_belongs_to_many :parents
  has_many :incident_logs
  has_many :users, through: :schools

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.search(search)
    if search
      where('first_name LIKE ? OR last_name LIKE ? OR identification_number LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
    else
      scoped
    end
  end

end



change the disciplinary_response files

Migration file

class DisciplinaryResponsesTable < ActiveRecord::Migration
  def change
    create_table :disciplinary_responses do |t|
      t.string :code
      t.string :description
      t.timestamps
    end
  end
end


class DisciplinaryResponse < ActiveRecord::Base
   attr_accessible :code, :description

   has_and_belongs_to_many :incident_logs

end




========
01/26/14

As a Dean

I want to login as a Dean

So that I can log a disciplinary response


Acceptance Criteria (do you have?):

(Y)login page
(y)signup page
(y)admin page
(y)dashboard to see users account
()disciplinary code inputed into system
()a form to connect students to an infraction




Do page for each category and add the following:
• Parent Outreach: School staff should keep parents informed of their child’s behavior and enlist parents as partners in addressing areas of concern. Outreach to parents can include, but is not limited to, a phone call and/or written communication.
• Intervention by Counseling Staff: Where available, school-based counseling personnel and/or School-Based Mental Health programs offer a wide range of comprehensive and confidential mental health services and interventions including, but not limited to: assessments, individual, group and family therapy, teacher consultations, educational strategies for parents and staff.
• Guidance Conference: Principals and teachers may request a guidance conference with the student and, where appropriate, with the parent or guardian.  The purpose of the conference is to review the behavior, find solutions to the problem and address academic, personal and social issues that might have caused or contributed to the behavior.
• Restorative Approaches: Restorative approaches can help schools prevent or deal with conflict before it escalates; build relationships and em- power community members to take responsibility for the well being of others; increase the pro-social skills of those who have harmed others; address underlying factors that lead youth to engage in inappropriate behavior and build resiliency; provide wrong doers with opportunities to be accountable to those they have harmed and enable them to repair the harm to the extent possible. These approaches include restor- ative enquiry, restorative discussion, restorative circles, mediation and formal restorative conferences.
• Individual/Group Counseling: Counseling provides students with an outlet to share issues in privacy that may be negatively impacting their attendance, behavior, and/or academic success.  Students discuss and formulate goals, and learn problem solving strategies that will en- able them to overcome a variety of personal challenges.  Counselors will conference with parents on a regular basis to discuss the student’s academic and personal progress.
• Peer Mediation: Peer mediators help classmates identify the problems behind their behavior and find solutions to these problems. Conflict resolution skills are incorporated into the strategies used by peer mediators so that all students involved learn new ways of handling conflict.
• Mentoring Program: A mentoring program matches a mentor who may be a counselor, teacher, student and/or leader with a protégé.  The object of this relationship is to help the protégé in his/her personal, academic and social development.
• Conflict Resolution: Conflict resolution provides an opportunity to empower students to take responsibility for peacefully resolving conflict. The related activities teach students, parents, and staff problem solving skills/techniques that can be used in everyday situations.  Such skills can include, but are not limited to, conflict and anger management, active listening, and effective communication.
• Development of Individual Behavior Contract: The student meets with teachers to create a written contract that includes objectives and the specific performance tasks that the student will accomplish to meet those objectives. The contract is signed by the student and teacher and, where appropriate, by the parent or guardian.
• Short-Term Behavioral Progress Reports: Teachers and/or principals may send behavioral progress reports to parents/guardians on a regular basis until they feel that the student is in control of his/her behavior and working in the classroom successfully.
• Referral to PPT (Pupil Personnel Team): Pupil Personnel Teams are school-based teams that utilize a multidisciplinary approach to encourage student success through prevention and intervention strategies and supports. A case manager is identified for each student referral so that an individualized plan can be created to help students overcome their academic and/or socio-emotional difficulties.
• Community Service (with Parental Consent): Students may be provided with community service opportunities so that they gain a greater
appreciation of their school neighborhoods and develop skills to become positive social change agents.  Community service can help students occupy their time with positive activities, avoid negative behavior and learn the value of service to others.
•  Referral to a Community Based Organization (CBO): Students may be referred to a community-based organization for a wide range of services  including  after-school  programming,  individual  or  group  counseling,  leadership  development,  conflict  resolution  and  tutoring.
•  Referral to Appropriate Substance Abuse Counseling Services: In the case where a student is presenting problems with substance abuse, including  the  use,  possession  or  distribution  of  illegal  drugs,  drug  paraphernalia,  and/or  alcohol,  referrals  should  be  made  to  counseling services that are either inside the school or through an outside community-based organization.
•  Referral to Counseling Services for Youth Relationship Abuse or Sexual Violence: When one person uses a pattern of threatened or actual physical, sexual, and/or emotional abuse to control a dating partner, the school should refer both the victim and the student who engages  in this behavior to separate appropriate school or community-based agencies for counseling, support, and education. Neither mediation nor conflict resolution are, under any circumstances, appropriate interventions for suspected relationship abuse.
• Referral to Counseling Services for Bias-Based Bullying, Intimidation or Harassment: When a student or group of students engages in bias- based bullying, intimidation or harassment of another student or group of students, both the victim and the student who engages in this behavior should be referred to separate appropriate counseling, support and education services provided by school staff or a community- based agency. Neither mediation nor conflict resolution are, under any circumstances, appropriate interventions for bias-based bullying, intimidation or harassment.








====================
Place logo in assets file to pull up off line.

Have the ability to see the referrals and cases for all deans and then be able to restrict to admins specifically.

Have a form where the Service Providers information can be placed.



On user's page
user should see a search field to lookup students
user should have navigations to other parts of site
user should



#TODO User should be able to login
User should be able to create a profile
User should be able to search for a student
User should be able to attach a referral to a student
User should be able to search for service-providers(sps)
User should be able to attach a service-provider to the student

User should be able to see previous referrals
User should be able to find a sp for a student according to their infractions

User should be able to sort through sps by:
location
distance from school
service-category

User should be able to:
- print out referral for student
- email guardian the referral
- email organization about reccommendation


This might be the way to iterate over a column in a table
==code start

       <th><%= f.label(:service_category) %></th>
            <% @service_categories.each do |service_category|  %>
               <div class="checkbox">
                  <label>
                     <input type="checkbox" name="service_category_ids" value="<%= service_category.id %>">
                   <td>  <%= f.check_box(:service_category) %> </td>
                     <%= service_category.name.capitalize %>
                  </label>
               </div>
            <% end %>
         </div>
    </th>

== code end
  </table>