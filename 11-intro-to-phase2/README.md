# Intro to Phase 2 & the Internet


## Recap Phase 1:
Some of the things we learned last phase
* **Ruby**
  - object oriented coding language 
* **Objects**
  - representation of the real world (instances of classes)
* **Domain Modeling**
  - decide what classes (models) we'll need and define the relationship(s) between them
* **SQL**
  - querying language allowing us to access info for our sql/relational database
* **ORM**
  - example: Active Record
  - translate ruby code into sql (example: Student.all)
* **Active Record**
  - writes sql for us
  - bridge between our ruby code (classes) and the database
* **CRUD**
   - Create
   - Read 
   - Update
   - Delete
* **Bonus: difference between class vs instance methods**
  - instance method: applies to instance of the class (example: student1.name) 
  - class method: applies to class itself (example: Student.create(name: 'Curly'))


## Overview Of Phase 2:
By the end of this Phase you should be able to create a fullstack web application
* HTTP 
  * Request & Response
  * REST 

* Rails 
  * MVC
    - Models
    - Views
    - Controllers
  * ERB 
  * How do RESTful routes map to CRUD actions 
  * Routes
  * Rails helper methods 
  * Generators

* HTML/CSS


## Introduction to the Internet

* What is the Internet?

  Internet - network (hardware)
  Web - browser - operates on internet (software)


  * How is data sent over the internet?
    * TCP - Transmission Control Protocol -> how data gets sent
    * IP - Internet Protocol, IP Adress -> where
    * HTTP - HyperText Transfer Protocol -> what kind of data
    * HTML - HyperText Markup Language

* How can I find out the IP address of www.google.com using a terminal command? What kind of server makes this lookup possible?
  * DNS (Domain Name System)
  * `nslookup`
  * https://iplocation.com/

  * What's the difference between static and dynamic websites? What are some of the benefits of a dynamic website?
    * https://en.wikipedia.org/wiki/ARPANET
    * https://en.wikipedia.org/wiki/Tim_Berners-Lee
    * http://info.cern.ch/hypertext/WWW/TheProject.html


* What is a server? What is a client?
  - Server: a computer which will recieve a request and send out a response
  - Client: any interface that can access the web (example: the browser)

* With a client and server, which makes the request? Which sends the response?
  - The client makes the request
  - The server sends the response

* What are the different parts of a URL?
   - https://www.google.com/search?q=raya+and+the+last+dragon&source=hp&ei=KjRrYMD_G_yz5NoPwOef4A4&iflsig=AINFCbYAAAAAYGtCOt28ZGPW1cvP8Gz1hHu8_06tmosd&gs_ssp=eJzj4tVP1zc0zEgpLCvOMcwxYPSSKEqsTFRIzEtRKMlIVchJLC5RSClKTM_PAwAU2A3R&oq=raya+&gs_lcp=Cgdnd3Mtd2l6EAEYADIICC4QsQMQkwIyBQgAELEDMgUIABCxAzIFCAAQsQMyAggAMgIIADICCAAyAggAMgIIADIFCAAQsQM6CwguELEDEMcBEKMCOggILhCxAxCDAToCCC46CAgAELEDEIMBOgUILhCTAjoFCC4QsQM6CAguEMcBEKMCUMj_O1jTizxgzZc8aAFwAHgAgAFbiAHWApIBATWYAQCgAQGqAQdnd3Mtd2l6sAEA&sclient=gws-wiz
  - Scheme: identify the protocol to be used for the webpage (exmaple: https://)
  - Hostname (or domain name): user friendly text alias for the ip address of the webpage (example: www.google.com)
  - Port: a number used to identify the specific webserver at the provided hostname; optional, if not provided then the default value is used (example: https default is 443; http default is 80)
  - Path: portion of the URL which comes after the first slash (/) and continues until the query string begins (example: /search)
  - Query string: the portion of the URL from the first question mark (?); info which will be passed to the server (example: ?q=raya+and+the+last+dragon)
   

* What is the request / response cycle?
  - Anatomy of Request:
    - HTTP Request Type (POST [Create], GET [Read], PATCH [Update], DELETE [Delete])
    - Headers (metadata for the server and client; user is unconcerned with this)
    - Body (where we send the data requried to carry out a request. example: username and password for a POST request to create a new account)

  - Anatomy of Response:
    - Status Code
      - 200: good (everything is fine)
      - 300: redirect (go to another page)
      - 400: user error (made a bad request)
      - 500: server is broken (server is at fault)
      - websites: http://httpstatusrappers.com/; http cats; http dogs
    - Headers
    - Body


* What is a HTTP request? Make a few, using at least two of these tools: Google Chrome, Postman, curl

* What are the parts of a HTTP request
  * Use a web browser to find the headers for an HTTP request. What do you think these headers do?
  * What is usually in the body of an HTTP _response_?
  * What is a HTTP status code? What do the codes 200, 404, 500, 503, 302, 422 and 418 mean?
    * https://http.cat/
  * Why do we use HTTP verbs? What is the difference between what GET, POST, PUT, PATCH, and DELETE requests do?
  * What is a URL? Which part of a URL is the scheme (protocol)? Where is the hostname? The port? The path? Query string?  What is the purpose of each of these parts? 
    * https://docs.google.com/presentation/d/1no3yw_Vw4hBzGDlsEDcubvFnowi-Exjg9FW_VJid_U0/edit#slide=id.g378a2b8862_0_5
