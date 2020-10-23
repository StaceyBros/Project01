# BlueSkies App

I made this application so that skydivers could easily look up events around Australia. Each skydiver has their own profile where they can add events they want to go to. They can create and delete events and admin users can create and delete dropzones.

## How the code works

This code uses Ruby on Rails, JavaScript and CSS.

There are 4 models. 3 of which have CRUD systems.
Users, Events and Disciplines have CRUD systems because I wanted to let the user create their profile and edit and delete events and dropzones.

The discipline model does not have a CRUD system. It has_and_belongs_to_many Events and Events has_and_belongs_to_many. This was so that the user could pick a few disciplines/categories for each event.

Both users and dropzones has_many events so that they can print as many events on their pages that are associated with them.

An event belongs a dropzone because it will only be held in that location.

I implemented a map using JavaScript with the leaflet API. I loaded a .js file and .css file and looked at the tutorials to figure out how to implement the js code. I used MapTiler for the map tiles.


## Bugs/Issues

I was unable to figure out how to implement a weather gem into my code.

Only some of the events are going into some of the dropzones from the seed data.

Unable to add a map to a new dropzone because I was unable to turn the latitude number to negative.

## links and credits

Thanks to Ben Cuttler, Greg Crozier, Fiona Jansen, Kestral and LG for permission to use the photos in the app.

[Map API](https://leafletjs.com/examples/quick-start/)

[Blue Skies app is here]()
