#Tessa Reed

#The problem and solution.

The bellow summary explains the problem and solutions.  [summary](https://docs.google.com/a/ait.nsw.edu.au/document/d/1V19cIZnVO7e-gunfpClTeKZ7UDwJEamIKU0qbVJqK9U/edit?usp=sharing)


- 1 - I wrote user stories on trello to create my product narrative, this helped me fully unpack the desired functionality of Brain-i-hack.
![User stories](https://github.com/TessaReed/Brainihack/blob/master/app/assets/images/readme/user_stories.png)

![Trello board link:](https://trello.com/b/YoR9berY/branihack)

- 2 - I roughly created a workflow diagram of the user journey/s. This helped me visualise how the user was going to interact with Brain-i-hack and distinguish the hackathon host journey from the hackathon participants.
![User journey/s](https://github.com/TessaReed/Brainihack/blob/master/app/assets/images/readme/user_journey.jpg)


- 3 - I used Mockplus to create my Wireframes and mock designs.
![login](https://github.com/TessaReed/Brainihack/blob/master/app/assets/images/readme/Login.png)
![Signup](https://github.com/TessaReed/Brainihack/blob/master/app/assets/images/readme/Signup.png)
![Create_profile](https://github.com/TessaReed/Brainihack/blob/master/app/assets/images/readme/Create_hackathon.png)
![View_hackathon](https://github.com/TessaReed/Brainihack/blob/master/app/assets/images/readme/View_hackathon.png)
![Assigned_team](https://github.com/TessaReed/Brainihack/blob/master/app/assets/images/readme/Team.png)
![Team_home](https://github.com/TessaReed/Brainihack/blob/master/app/assets/images/readme/Team_home.png)
![List_hackathons](https://github.com/TessaReed/Brainihack/blob/master/app/assets/images/readme/List_hackathon.png)
![Reward_team](https://github.com/TessaReed/Brainihack/blob/master/app/assets/images/readme/Reward_team.png)
![Upload_work](https://github.com/TessaReed/Brainihack/blob/master/app/assets/images/readme/Upload_file.png)

- 4 - Entity Relationship Diagram (ERD)
![ERD](https://github.com/TessaReed/Brainihack/blob/master/app/assets/images/readme/ERD.png)

- 5 - Project plan and estimation: We were given two weeks to complete a rails two-sided market place. This time frame includes the ideation, planning and building the rails application. Recognising the importance of detailed planning I used the first week to create user stories, my ERD, Wireframes and mock designs. I then used the second week to code the app.



Rails application code
Demonstrate Ruby on Rails development skills.

- [x] Create your application using Ruby on Rails.
- [x]  Demonstrate knowledge of Rails conventions.
- [x]  Use postgresql database in development.
- [x] Use an API (eg. Omniauth, Geocoding, Maps, other..).
- [X] Use appropriate gems.
- [X] Use environmental variables to protect API keys etc. (dotenv)
- [X] Implement a payment system for your product. (e.g. Stripe)
- [ ] Your app must send transactional emails (eg. using Mailgun).
- [X] Your app should have an internal user messaging system.
- [X] Your app will have some type of searching, sorting and/or filtering capability.
- [X] Your app will have some type of file uploading capability (eg. images).
- [X] Your app will have authentication (eg. Devise, must have full functionality in place).
- [ ] Your app will have authorisation (users have restrictions on what they can see and edit).
- [X] Document your application with a README that explains how to setup, configure and use your application.


# Brain-i-hack

## Getting Started

These instructions will get you an idea of the features I have implemented in the project and some of the gems required to achieve this.

### Prerequisites

I used the following gems to create Brain-i-hack:

1. Devise is used to create user authentication. Devise allows you to create a user and add sign up and login.

2. Shrine is used to upload image files. It supports uploading, processing and deleting IO objects.

3. Stripe allowed me to quickly integrate checkout into my application.

4. I used the Geocoder API to allow the possibility of showing the location of a hackathon, although this information is not essentiality for the usability of the app, as the user does not need to visit a location to participate in most cases. However I wanted to give Hackathon hosts the option of hosting a hackathon in a location.

5. I used Cloudinary to manage my images in the cloud. This API is a great way to store images.


### Features

- Image uploading
- Search engine
- Internal messaging
- Create profile/hackathons.
- View location on google map.

## Deployment

Brain-i-hack is deployed on Heroku.
Note, To deploy to heroku its very important to run 'heroku db:migrate' this migrates the database in heroku.

## Acknowledgments

* Thank you Coder Academy. :) Especially Luke for putting up with an infinite loop of questions!
* Thank you to all the contributors to the fantastic gems that I used (listed above).
