# Q0: Why are these two errors being thrown?

1. The model has not been migrated to database yet
2. we havn't defined Pokemon model yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

Everty time we refresh the website a new wild pokemon will appear. There're only 4 possible pokemons appeared which is defined in seeds.rb

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

On the front end it shows a button "Throa sa pokeball", and `capture_path` , which is a nickname of  `capture `method in Pokemon's controller, will grab the id of this pokemon generated and set this pokemon's trainer id to the logged in user's id.

# Question 3: What would you name your own Pokemon?

If this is not project related, probably name it Oski. 

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

A path with parameters like the trainer's id

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

Put it under the `else` branch(meaning the model is not successfully saved), this will give us a fancier error prompt.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
