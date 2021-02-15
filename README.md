- clear sidekiq
Sidekiq.redis { |r| puts r.flushall }
redis-server
bundle exec sidekiq
bundle exec rspec


Task 1
- Install Faraday
- Nodes Service
- Figure out polling
- Node model
  - current_status method that is the worst status that node has reached
  - For example, if a node reached a yellow status (defined below), but later (further ahead in time) in its history, it is green, that nodes current status would still be yellow
- each call to the api keeps a history of the attributes as they change

Task 2
- Create Users
- Create Accounts
- Associate Users with Accounts
- Assign Roles by name to users. The role names will be : admin, developer
- Assign a Node to an Account
  - All Users, Accounts, Roles and the assigning of Nodes to Accounts should be done by hitting your API endpoints
  -  Do not use db/seeds.rb or a similar method to set up this data. We want to see all the data inserted through API calls. We suggest creating a reproducible way to hit your endpoints, such as Rake tasks or scripts in bin/
- create 3 users
  [
    {name: 'Chrissy Snow', email: 'csnow@example.com'},
    {name: 'Jack Tripper', email: 'jtripper@example.com'},
    {name: 'Janet Wood', email: 'jwood@example.com'}
  ]
- Create 2 accounts
  [
    {name: 'Acme Developers'},
    {name: 'Acme Devops}
  ]

- User and Account Roles Setup
  Assign Chrissy Snow to both accounts
  Assign Jack Tripper to Acme Devops
  Assign Janet Wood to Acme Developers
  Assign the role of admin to Chrissy, and developer to Janet and Jack

- Assign Nodes to Accounts
  Assign all nodes to the Acme Devops account
  Assign only the small nodes to the Acme Developers Account


  Task 3
