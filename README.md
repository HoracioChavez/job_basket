#Basket of Jobs
###A one stop shop for job search.

You can visit [more projects](http://h6c5.com/projects) and a [live project](http://basketofjobs.org).

##What is this web app for?
####Job search for the Turing School community.

Is a tool for Turing students and Alunni to be a one stop shop for their job search. The community will have a set of tools available to them to track where they are in the job process and do research about different job prospects. Students and Alumni can add data about different companies, including info about their location, size, and if they are hiring developers at that time.

This was a greenfield project but the plans for this are to be a legacy project for future Turing students to improve on.

##Technical requirements.
####Rails + PostgreSQL.

This is a Rails web app, and was developed and tested only with version 4.1.6. PostgreSQL version 0.17.1 was applied.

##How to install.
#### Git Clone + Bundle + Rake + Figaro + Token.

To start you need to clone the project into your local machine, and then go to the app directory, install the dependencies and then create the database and tables.

```bash
$ git clone git@github.com:HoracioChavez/job_basket.git
$ cd job_basket
```
Install all dependencies.

```bash
$ bundle install
```
 Create the database and the required tables.

```bash
$ rake db:create db:schema:load
```
 Run the server.

```bash
$ unicorn
```

Now in your browser go to `http://localhost:8080`.

Now, as you have figaro in your system, it's time to install it.

```bash
figaro install
```

Figaro created a `config/application.yml` file. There you have to include a github's application token. For security reasons, I'm not sharing my personal token here, and neither should you . To create your own token, please go to your (Github Applications)[https://github.com/settings/applications]. 

A good advise, is to create two tokens, one for development and another for production. Remember to NEVER post your tokens, even in your github repositories. 

Once you have the token, fill your `config/application.yml` file to look like this. 
Of course, instead of the x's should be your token.

```ruby
GITHUB_KEY: 'xxxxxxxxxxxxx'
GITHUB_SECRET: 'xxxxxxxxxxxxxxxxxxxxxxxxxx'
```

## How to run the app.
####Simple, just run the server.

Running this app should be really straight forward. Just run your favorite server. This time, I'll use `unicorn`, and you should see something like this. 


## How to enjoy the Basket of Jobs.
#### Search for cool jobs, track them and got your favorite!

The best part of using this app is getting a job. So, to do that, start looking for jobs. 

Go to the turing "gear" on the top right corner and click it! Now, click again in "Add Jobs". At the bottom of the screen, you'll find "Add Jobs from Github". There you can retrieve jobs into the app. A cool search could be "description: Ruby". But fee free to find your most interesting options. 

As you probably have a few options, now it's time to navigate each one. Once you find something interesting, you can "Favorite" that job. 

![](http://h6c5.com//system/pictures/images/000/000/032/original/Screen_Shot_2015-01-09_at_9.11.05_PM.png?1420859569)

##The team.
#### Cool people develop cool products.

Developed during two and a half weeks and in team of four, Basket of Jobs was a pair programming success.

I developed Basket of Jobs with [Tan Doan](https://github.com/tanmdoan), [Robert Gu](https://github.com/BobGu) and [Gustavo Villagrana](https://github.com/GusVilla303). 

