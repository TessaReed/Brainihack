#Tessa Reed

#The problem and solution.

Design Documentation

[Summary](https://docs.google.com/a/ait.nsw.edu.au/document/d/1V19cIZnVO7e-gunfpClTeKZ7UDwJEamIKU0qbVJqK9U/edit?usp=sharing)


- 2 - I wrote user stories on trello to create my product narrative, this helped me fully unpack the desired functionality of Brain-i-hack.
![User Stories]()

- 3 - I roughly created a workflow diagram of the user journey/s. This helped me visualise how the user was going to interact with Brain-i-hack and distinguish the hackathon host journey from the hackathon participants.



- 4 - I used Mockplus to create my Wireframes and mock designs.
![login]()
![Signup]()
![Create_profile]()
![View_hackathon]()
![Assigned_team]()
![Team_home]()
![List_hackathons]()
![Reward_team]()
![Upload_work]()

- 5 - Entity Relationship Diagram (ERD)
![ERD]()

- 6 - Project plan and estimation: We were given two weeks to complete a rails two-sided market place. This time frame includes the ideation, planning and building the rails application. Recognising the importance of detailed planning I used the first week to create user stories, my ERD, Wireframes and mock designs. I then used the second week to code the app.



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

These instructions will get you a rough idea of how to copy the project.

### Prerequisites

I used the following gems to create Brain-i-hack:

1. Devise
Devise is used to create user authentication. Devise allows you to create a user and add sign up and login.

2. Shrine
Shrine is used to upload image files. It supports uploading, processing and deleting IO objects.

3. Stripe
Stripe allowed me to quickly integrate checkout into my application.

4. Geocoder
I used the Geocoder API to allow the possibility of showing the location of a hackathon, although this information is not essentiality for the usability of the app, as the user does not need to visit a location to participate in most cases. However I wanted to give Hackathon hosts the option of hosting a hackathon in a location.

5. Cloudinary
I used Cloudinary to manage my images in the cloud. This API is a great way to store images.


### Features

- image uploading
- search engine
- internal messaging
- create profile
- create hackahon

## Deployment

Add additional notes about how to deploy this on a live system
Brain-i-hack is deployed on Heroku.
To deploy to heroku its very important to run 'heroku db:migrate' this migrates the database in heroku.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Hat tip to anyone who's code was used
* Inspiration
* etc
