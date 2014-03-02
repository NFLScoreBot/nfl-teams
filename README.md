## NFL Team Identification ##

Identify NFL teams from full names, nicknames, and malformed names.

### Quickstart ###

##### Installing #####

Install with [npm](https://www.npmjs.org/):

	npm install nfl-teams

##### API #####

nfl-teams can be imported just like any Node.js module:

	teams = require "nfl-teams"

The `teams` module defines one method, `matchTeam`, which takes a single string as a parameter. Another string is returned, with the full team name (city and formal nickname). As an example,

	teams.matchTeam "stillers"
	# => "Pittsburgh Steelers"

`matchTeam` assumes that the team name it's given is in English and is, in fact, an actual team name. If the name isn't recognized, `matchTeam` will return a best guess, or an empty string if `str` isn't a string or has a length of zero.

### Hacking on nfl-teams ###

##### Dependencies #####

1. [Node.js](http://nodejs.org)

2. [Oven](https://github.com/dpearson/oven)

   Install with:

		sudo npm install -g oven-build

##### Building #####

NHLScoreBot is set up to be quickly built with `oven`, so you can just run:

	npm install

to install dependencies and:

	oven build

to lint and build the source code.

Alternatively, you can run:

	oven watch

to continuously rebuild the code as files change.

##### Running Test Cases #####

The included test cases run on [vows](http://vowsjs.org), which can be installed by running:

	sudo npm install -g vows

Then, run :

	npm test

to run the test suite.

### Credits ###

nfl-teams uses [node.js](http://nodejs.org/) and [CoffeeScript](http://coffeescript.org/).

It also uses the following library:

* [natural](https://github.com/NaturalNode/natural).

In addition, team nicknames are sourced [from Wikipedia](http://en.wikipedia.org/wiki/National_Football_League#Clubs).

### License ###

	Copyright (c) 2014, David Pearson
	All rights reserved.

	Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

	Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
	Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
	THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.