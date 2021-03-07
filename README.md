### Description
   Remesh app.  You can create new conversation(s), message(s)for conversion, and thought(s)for message.  You can search for conversations by title. The app uses a postgresSQL database.

### Instructions
   Ruby version 2.7.1 & Rails version 6.0.3
 In your terminal
 * Clone the repo ```git clone git@github.com:HuydDo/remesh.git```

 * Change dir into repository ```cd remesh```

 * Run ```bundle install``` installs the dependencies

 * Create a .env file in your root directory which is remesh dir and put the following:
 
 ```
 POSTGRES_USER='your_username'
 POSTGRES_PASSWORD='your_password'
 POSTGRES_HOST='localhost'
 POSTGRES_DB='remesh'
 POSTGRES_TEST_DB='remesh_test'
```
 * Run ```rails db:create``` creates a database

 * Run ```rails db:migrate``` runs (single) migrations that have not run yet.

 * Run ```rails db:seed``` runs the db/seed.rb file

 * Run ```rails s```
   and navigate to ```localhost:3000``` in your browser

 ### Notes
 
 * run ```yarn install --check-files``` if you have Yarn package are out of date

 * run ```bundle exec rails webpacker:install``` if you have issue when opening the app ```Webpacker::Manifest::MissingEntryError in Conversations#index```

 * You can reset your database by run ```rails db:migrate:reset``` does db:drop, db:create, db:migrate

 ### Testing
 *  Open new terminal or you can close the running server by ```Ctrl + C```.  Then un ```rspec``` or ```bundle exec rspec```  passes 17 tests

### Additional features
 * Add more styling
 * Create dynamic search
 * Add links to navigate between pages
 * Delete conversations