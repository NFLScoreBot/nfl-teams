###
	Copyright 2014 David Pearson.
	All rights reserved.
###

assert = require "assert"
teams = require __dirname + "/../../lib"
vows = require "vows"

vows.describe "Team Name Matching"
	.addBatch
		"matchTeam" :
			topic : ->
				[
					teams.matchTeam("stillers"),
					teams.matchTeam("Pittsburgh Steelers"),
					teams.matchTeam("jes")
				]

			"We can handle a nickname" : (topic) ->
				assert.isTrue topic[0] is "Pittsburgh Steelers"

			"We can handle a full team name" : (topic) ->
				assert.isTrue topic[1] is "Pittsburgh Steelers"

			"We can handle a malformed nickname" : (topic) ->
				assert.isTrue topic[2] is "New York Jets"
	.export module
