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