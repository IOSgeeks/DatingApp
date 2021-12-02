Original App Design Project
===

# LovelyMeet

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)


## Overview
### Description
After covid and having to quarantine, social interaction can be difficult especially to CUNY students who had to go through semesters of mainly online classes. Our app will help fix this issue as our app will allow CUNY students form bonds in a fun and simple manner.


### App Evaluation
[Evaluation of your app across the following attributes]
- **Category:** Social Media
- **Mobile:** iOS
- **Story:** User's can look for compatiable partner
- **Market:** CUNY students
- **Habit:** This app can decrease the statistic of single people
- **Scope:** User creates profile with age, location, interests, and etc. On profile can like music to match up with other users.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* User can create a new account (COMPLETED)
* User can login (COMPLETED)
* User can search for other users according to location
* User can like a blog
* User can follow/unfollow another user
* User can view a feed of blogs-music
* User can update profile
* CUNY student verification using school email

### 2. Screen Archetypes

* Login Screen
   * User can login
* Register Screen
   * User can create a new account
* Edit Profile
  * User can edit their profile
* Stream
  * User can view other profiles and like/dislike them   
* Message
  * User can message a different user if they both liked each other

* Stream
   * User can view a feed of blogs-music
   * User can double tap to like blogs-music
* Creation
   * User can create blogs to post-music
* Search
   * User can search for other users near their location
   * User can chat 

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Hobby selection
* Profile
* 

**Flow Navigation** (Screen to Screen)

* Sign up/Sign in
   * If they click on sign up it leads to a page where they input their own information.
   * If they click on sign in it leads to a "enter username and password" page.
* Profile page
   * Add/Edit new information into user's profile page

* View Matches Page 
  * Description of the matched users/ things they like / their bio etc

* Chat Box Page 
   * Page to message the matched users. 


   

## Wireframe
<img src="https://i.imgur.com/n2TYVJm.jpg" width=800><br>


## Schema 

### Models
   | Property      | Type     | Description |
   | ------------- | -------- | ------------|
   | objectId      | String   | unique id for the user post (default field) |
   | author        | Pointer to User| profile author |
   | profilePicture| File     | users profile picture |
   | likedProfile  | Boolean  | shows if user liked another users profile |
   | likedPost     | Boolean  | shows if user liked another users music post |
   | message       | String   | allows users to interact with each other 1 on 1 |
   | image         | File     | image that user posts | 
   
### Networking
- [Add list of network requests by screen ]
    * Login Screen
       * (Read/GET) Query logged in user object
    * Register Screen
       * (Create/POST) Create a new profile
    * Stream Screen
       * (Read/GET) Query all user profiles so a given user can choose to like the profile or not
    * Profile Screen
         ```swift
         let query = PFQuery(className:"Post")
         query.whereKey("author", equalTo: currentUser)
         query.order(byDescending: "createdAt")
         query.findObjectsInBackground { (posts: [PFObject]?, error: Error?) in
            if let error = error { 
               print(error.localizedDescription)
            } else if let posts = posts {
               print("Successfully retrieved \(posts.count) posts.")
           // TODO: Do something with posts...
            }
         }
         ```
       * (Update/PUT) Update user profile 
    * Messaging Screen
       * (Create/POST) Create a new message
       * (Read/GET) Other users message
    * Music Blog Screen
      * (Like/PUT) Users can like music blogs
      * (Update/PUT) Update likes so users who have similar music tastes can be matched


- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]  
##### Parse API 
- Base URL - [https://YOUR.PARSE-SERVER.HERE/parse/](https://docs.parseplatform.org/rest/guide/#your-configuration)

   HTTP Verb | Endpoint | Description
   ----------|----------|------------
    `POST`    | /parse/classes/<className> | creating objects
    `PUT`    | /parse/classes/<className>/<objectId> | updating objects
    `DELETE`    | /parse/classes/<className>/<objectId>   | Deleting objects
    `POST`    | /parse/users | signing up
    `GET`    |  /parse/login | logging in
    `POST`    | /parse/logout | logging out
    
### PROGRESS
- gif below shows our apps homescreen and being able to sign up and login with the same account information
  
 https://giphy.com/gifs/lEhBlcoWG5hHlUHVh3
 
 http://g.recordit.co/KLuuu1BtiC.gif
