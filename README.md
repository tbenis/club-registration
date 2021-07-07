# README
<!-- 
This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
-->
# Club Registration App
![](https://phase2-images.s3.amazonaws.com/clubs-orgs.jpeg)


## Overview

The Club Registration app was created to fill a need in the institution I previously graduated from. There is no simple way for students find all clubs and organizations on campus and join the ones they like. With my Club Registration app, students can log in and view all clubs available on campus. They also have the ability to create their own clubs and assign admins.

## How to run this project
1. Clone the Repository <small> [ in terminal]</small>
    ``` 
     % git clone https://github.com/tbenis/club-registration.git
    ```
2. Bundle install dependecies <small> [ in terminal]</small>
    ``` 
    % bundle install
   ```
3. Run Migrations <small> [ in terminal]</small>
    ``` 
    % rake db:migrate
   ```
   <!--
    you should see something like this:
        ![](https://phase2-images.s3.amazonaws.com/Screen+Shot+2021-04-30+at+7.20.03+AM.png)
    
    If you do not see a message that looks like the one above in the terminal, that means migrations did not work. Delete the 'development.sqlite' file in the 'db' folder and try ```rake db:migrate``` again.
    ![](https://phase2-images.s3.amazonaws.com/Screen+Shot+2021-04-30+at+7.18.44+AM.png) -->

4. Seed Database <small> [ in terminal]</small>
    ``` 
    % rake db:seed
   ```
5. Run server <small> [ in terminal]</small>
    ``` 
   % rails s
   ```
6. Navigate to the url in a web browser <small> [port 3000]</small>:
    http://localhost:3000/

<br>

### Additional Information (Password for seeded users)
Regarding the seed data, the password for all created users after running ```rake db:seed```  is 'password'
Each user has a unique email. Head to the terminal and type ```% rails c```. Once the console comes up, type ```User.all```  and that will show you all 10 users and their emails. Remember to use ```password``` to login in a browser.


<br>

### Video Demo
<a href="https://www.youtube.com/watch?v=vRlKIAR2ks0" target="_blank">Youtube Video Demo Link</a> 

### Author(s)
 Benis Tambe >>>> [GitHub -- Benis Tambe](https://github.com/tbenis)
### License:
MIT