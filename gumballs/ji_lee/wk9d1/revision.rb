1.  a. kitchen[:oven]
    b. kitchen[:drawer][1]
    c. kitchen[:drawer].push('fork')

2. attr_accessor allows to read and write the element inside a class passing argument

3. everything in ruby is an object, including class. class is an object you can create multiple times passing in methods inside the respective class. 

4. 
class Student
  def initialize(name, age, fav_subject="")
    @name = name
    @age = age
    @fav_subject = fav_subject
  end
end

new_student = Student.new

5. 
get is grabbing(reading) information from the database and not changing anything from the database
post is making chages to the database(create, update). 

6. 
params

7. 
use ajax to pass data 

8. 
rails new [name of app] -d=postgresql

9. 
view: show
controller: posts 

10. first go to 'rails c' and type 'new_user = User.new'

11. User.first.destroy

12. User.delete_all

13. a. model defines a table for a database and shows the relationship with other models. you can add behaviours inside the model. 
    
    b. controller defines the methods to be used for models
    c. views are things that are populated visually on the screen 

14. User.new creates a new user class but doesnt save in the database. User.create saves in the database. 

15. rails g migration

16. 


17. $('<div/>') creates a new div element.
    $('div') selects all the div elements.    

18. first install httparty gem and pass in the following: HTTParty.get("http://www.omdbapi.com/?s=Jaws"

19. $.ajax({
      type: 'GET',
      url: 'http://www.omdbapi.com/?s=Jaws',
      success: function(title, year){
        console.log('success', title );
        console.log('success', year);
      }
  })

20. a. clicking 'body'
    b. element that is clicked on the body
