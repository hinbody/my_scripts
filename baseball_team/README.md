# Baseball Team

This script creates a JSON file containing data about the players on a baseball
team

## Notes

Player names must be unique, otherwise if you enter a player with the same name,
it will overwrite the first one

Currently the script should be ran once for every team to be added. Running it a
second time with the same team name will create a second JSON section for the
same team. I don't know if there's a good way around this. I'll have to learn
more about JSON... maybe reading in the current JSON file first if it exists and
creating a hash based on that, then adding to the hash, and just writing over
the file... I'll experiment with that next week
