<br>
This is a one stop shop for jobs designed for the Turing School students and Alumni. This community will have a set of tools available to track where they are in the job process and do research about different job prospects.   

Students and Alumni can add data about different companies, including info about their location, size and if they are hiring developers at the time.    

This project was developed pairing almost exclusively by <a href='https://github.com/BobGu' target='_blank'>Robert Gu</a>, <a href='https://github.com/GusVilla303' target='_blank'>Gustavo Villagrana</a>, <a href='https://github.com/tanmdoan' target='_blank'>Tan Doan</a>, and <a href='https://github.com/HoracioChavez' target='_blank'>Horacio Chavez</a> as part of the <a href='http://turing.io' target='_blank'> Turing School</a> Curriculum. We pair almost exclusively. This project is currently not maintained.   

This was a greenfield project, but the plans for this are to be a legacy project for the future Turing students to improve on.  

**<a href='https://github.com/HoracioChavez/job_basket' target='_blank'>Github repo</a> | <a href='http://basketofjobs.org' target='_blank'>Production Site</a>**

## Features. 

To use *Basket of Jobs* it is required to be part of the Turing School community on Github.

**Login with Github**
If you are publicly part of the Turing School Github group, create an account and login with Github is really easy. 

![](http://h6c5.com/system/pictures/avatars/000/000/048/original/Screen_Shot_2015-04-05_at_6.01.32_PM.png?1428274941)
###### Login via Github

Your name and profile picture (the url from Github) will be stored to improve your experience. 

![](http://h6c5.com/system/pictures/avatars/000/000/047/original/Screen_Shot_2015-04-05_at_6.01.15_PM.png?1428274918)
###### Menu appears when you click over the turing logo on the top right corner. 


**Add jobs from Github.**
Powered by the <a href=‘https://jobs.github.com/api', target=‘_blank’>Github Jobs API</a> you can retrieve jobs already posted on Github to the database. Those jobs can be filtered by ‘Description’, ‘Location’ and ‘Job Type’. 

![Form to add Jobs from Github](http://h6c5.com/system/pictures/avatars/000/000/042/original/Screen_Shot_2015-04-05_at_2.41.44_PM.png?1428262985)
###### Form to Add jobs using Github Jobs API

**Add jobs Manually.**
Create jobs directly to *Basket of Jobs* by filling the form. Remember that any job in the database is available to every user. 
![form to Add jobs manually](http://h6c5.com/system/pictures/avatars/000/000/041/original/Screen_Shot_2015-04-05_at_2.41.14_PM.png?1428262941)
###### Form to Add jobs manually. 

**Save your Favorite Jobs.**
Save as many jobs as you like by telling basket of jobs which ones are your favorites. 
![Favorite a Job](http://h6c5.com/system/pictures/avatars/000/000/043/original/Screen_Shot_2015-04-05_at_5.18.35_PM.png?1428272386)
###### Mark as favorite by clicking "Favorite this job!".

You can visualize all the time your favorite jobs list. 
![View with favorites](http://h6c5.com/system/pictures/avatars/000/000/044/original/Screen_Shot_2015-04-05_at_5.23.15_PM.png?1428272691)
###### Main view with all your Favorite Jobs with all the Jobs in Basket of Jobs.

**Filter by Company**
By clicking in the company name, you can find all the registered jobs for that company. Once you are looking a company, you can even 'chat' about news, openings, comments about the kind of jobs, people you know there, or anything you feel it's relevant. 

![Company View](http://h6c5.com/system/pictures/avatars/000/000/045/original/Screen_Shot_2015-04-05_at_5.48.57_PM.png?1428274169)
###### Publish news about a company to everyone in the community. 

**Filter Jobs by Location or Type**
If you are interested in an specific location, just click that location from the "location list", the same for the type of job. 
![Filters](http://h6c5.com/system/pictures/avatars/000/000/046/original/Screen_Shot_2015-04-05_at_5.51.15_PM.png?1428274588)
###### View jobs by type or location.

**VPS**
This project is hosted using an Ubuntu server on Digital Ocean.
![](http://h6c5.com/system/pictures/avatars/000/000/049/original/digital-ocean.png?1428275268)

## Interesting challenges.

**Submit a form from another controller**
We want to create news (comments according to the code) from the Company show view. This require an special approach to tell rails which controller are we going to use, and as News belong to an specific company, also to tel which company is that. 

<script src="https://gist.github.com/HoracioChavez/321d3a0bef75061261e2.js"></script>
<script src="https://gist.github.com/HoracioChavez/3d26eb795ef924938d11.js"></script>
<script src="https://gist.github.com/HoracioChavez/55c3a9d980b539546bb5.js"></script>

**Save jobs from Github Job API**
As a user, you should be able to type a 'Description', 'Location' and 'Job type' to retrieve Jobs from the Github API. 

<script src="https://gist.github.com/HoracioChavez/67233277cc594e812b49.js"></script>
<script src="https://gist.github.com/HoracioChavez/8c8faf67c26ecf66efc1.js"></script>
<script src="https://gist.github.com/HoracioChavez/e6f1c876de5adad138e1.js"></script>

## How to Install. 

**Environment**
This is a Ruby on Rails app with PostgreSQL. It's required to have them properly installed in your local machine. If you need help for that, please follow [this]() tutorial from our friends of Jumpstart Lab. 

Run the next commands in your terminal.

<script src="https://gist.github.com/HoracioChavez/d2ce8d041d2c3ee8a16d.js"></script>

Create your github credentials: You should create your own github credentials from "[Github Developer Applications](https://github.com/settings/applications)" to be able to use this app. 

![github application](http://h6c5.com/system/pictures/avatars/000/000/050/original/boj---github-app.jpg?1428295037)
###### Notice that Homepage URL and Authorization Callback URL both mention localhost:3000. If you run locally your `rails server` that should be fine, but for production, just change that to you real domain. 

As we are using [Figaro](https://github.com/laserlemon/figaro), you should add those credentials to `config/application.yml` as follow:

<script src="https://gist.github.com/HoracioChavez/c899733327e7694e714d.js"></script>

Now, you are ready to go!

## How to start using basket of jobs. 

The best part of using this app is getting a job. So, to do that, start looking for jobs.

Go to the Turing "gear" on the top right corner and click it! Now, click again in "Add Jobs". At the bottom of the screen, then you'll find "Add Jobs from Github". Now you can retrieve jobs from Github into the app. A cool search could include "description: Ruby". But feel free to find your most interesting options.

Once you found an interesting job, just mark it as "Favorite", so you can review it at any time. Also, please share any interesting information about the companies by commenting in the Companies Show page. 

## Wrap up. 

Basket of Jobs is a Rails web app available only to the <a href: 'https://github.com/turingschool' target='_blank'>Turing School community in Github</a>. There, you can search for jobs in Github, create Jobs manually and mark any job as favorite. By filtering your search by type and location, you reduce the shown options. Basket of Jobs helped to explore APIs, Omniauth, forms from different controllers, and VPS. 

Thanks for reading, and **until the next one!**
