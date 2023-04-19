Terminal Commmands

$ rails new full-stack-ihop -d postgresql -T

$ cd full-stack-ihop

$ rails db:create

$ git remote add origin https://github.com/learn-academy-2023-bravo/full-stack-rails-i-hop.git this is mine, don't copy it! >

$ git branch

$ git checkout -b main

$ git status <!-- normally don't want to use all because it's really easy to make mistakes>

$ git add .

$ git status

$ git commit -m 'initial commit'

$ git push origin main

$ bundle add rspec-rails

$ rails g rspec:install

$ rails g model Blog title:string content:string

$ rails db:migrate

$ rails g controller Blog make sure everything is working

$ rails server

navigate to localhost:3000



✗ rails c  

Blog.create title: 'New Kid On the Blog 1', content: 'Marky Mark'
Blog.create title: 'New Kid On the Blog 2', content: 'Donnie Wahlberg'
Blog.all