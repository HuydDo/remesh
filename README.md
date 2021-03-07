### Description
   Remesh app.  You can create new conversation(s), message(s)for conversion, and thought(s)for message.  You can search for conversations by title. The app uses a postgresSQL database.

### Instructions
   Ruby version 2.7.1 & Rails version 6.0.3
 In your terminal
 * Clone the repo ```git clone git@github.com:HuydDo/remesh.git```

 * Change dir into repository ```cd remesh```

 * Run ```bundle install``` installs the dependencies

 * Run ```rails db:create``` creates a database

 * Run ```rails db:migrate``` runs (single) migrations that have not run yet.

 * Run ```rails db:seed``` runs the db/seed.rb file

 * Run ```rails s```
   and navigate to ```localhost:3000``` in your browser

 ### Testing
 *  Open new terminal or you can close the running server by ```Ctrl + C```.  Then un ```rspec``` or ```bundle exec rspec```  passes 18 tests

### Additional features
 * Add more styling
 * Create dynamic search
 * Add links to navigate between pages
 * Delete conversations