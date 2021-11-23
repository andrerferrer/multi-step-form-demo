# IN PROGRESS!

# GOAL

This is a demo to show-case how to implement .

[You can also check my other demos](https://github.com/andrerferrer/dedemos/blob/master/README.md#ded%C3%A9mos).

## What needs to be done?

### 1. Add the gem
```ruby
# Gemfile
gem ''
```

Remember to `bundle install`

### If you want to check it locally
```sh
repo_name="restaurants-boilerplate"
gh_repository="git@github.com:andrerferrer/$repo_name.git"
git clone $gh_repository demo
cd demo
bundle install
yarn install
rails db:create db:migrate db:seed
rails s

# now you can go to http://localhost:3000/
```

And we're good to go 🤓

Good Luck and Have Fun
