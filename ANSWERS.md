# Q0: Why is this error being thrown?
This error is being thrown because the migrations have not been migrated yet. That is the error that was stated. But in this case also making a new model and migrating it fixed the problem.
# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
They are being called on in the view. The common factor is the trainer. Also, the only possible pokemons that can appear are those form the seed file.
# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
It creates a button that allows you to update the Pokemons that the current Trainer owns. It calls the capture function in Pokemons Controller. There is pokemon is found, and its current trainer is updated.
# Question 3: What would you name your own Pokemon?
aPokemon
# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in a path to the current trainer's page. The path needed to create a new patch route.
# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
When you try to make a pokemon with no name or a non-unique name, the error is thrown and saved as :error. Then, this error is picked up by the layouts/_messages and rendered by layouts/application.
# Give us feedback on the project and decal below!
I LOVE IT! GOOD JOB!
# Extra credit: Link your Heroku deployed app
