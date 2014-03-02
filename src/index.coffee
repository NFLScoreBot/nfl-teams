###
	Copyright 2014 David Pearson.
	All rights reserved.
###

natural = require "natural"

teams =
	"Buffalo Bills"        : ["bills"]
	"Miami Dolphins"       : ["dolphins", "fins"]
	"New England Patriots" : ["patriots", "pats"]
	"New York Jets"        : ["jets", "gang green"]
	"Baltimore Ravens"     : ["ravens"]
	"Cincinnati Bengals"   : ["bengals"]
	"Cleveland Browns"     : ["browns"]
	"Pittsburgh Steelers"  : ["steelers", "stillers", "stihllers"]
	"Houston Texans"       : ["texans"]
	"Indianapolis Colts"   : ["colts"]
	"Jacksonville Jaguars" : ["jaguars", "jags"]
	"Tennessee Titans"     : ["titans"]
	"Denver Broncos"       : ["broncos"]
	"Kansas City Chiefs"   : ["chiefs"]
	"Oakland Raiders"      : ["raiders", "silver and black"]
	"San Diego Chargers"   : ["chargers", "bolts"]
	"Dallas Cowboys"       : ["cowboys", "boys", "americas team"]
	"New York Giants"      : ["giants", "big blue", "gmen"]
	"Washington Redskins"  : ["redskins", "skins"]
	"Chicago Bears"        : ["bears"]
	"Detroit Lions"        : ["lions"]
	"Green Bay Packers"    : ["packers", "pack", "green and gold"]
	"Minnesota Vikings"    : ["vikings", "vikes"]
	"Atlanta Falcons"      : ["falcons"]
	"Carolina Panthers"    : ["panthers"]
	"New Orleans Saints"   : ["saints"]
	"Tampa Bay Buccaneers" : ["buccaneers", "bucs"]
	"Arizona Cardinals"    : ["cardinals", "cards"]
	"St. Louis Rams"       : ["rams"]
	"San Francisco 49ers"  : ["49ers", "niners"]
	"Seattle Seahawks"     : ["seahawks", "hawks"]

# Public: Given a colloquial team nickname, determine the full team name.
#
# str - A team name or nickname, as a string
#
# Example:
#
#	matchTeam "stillers"
#		=> "Pittsburgh Steelers"
#
# Returns a full team name, as a string.
matchTeam = (str) ->
	if typeof str isnt "string"
		return ""

	words = str.toLowerCase().split " "

	bestMatch = ""
	bestScore = 0.0

	for team of teams
		for nickname in teams[team]
			for word in words
				score = natural.JaroWinklerDistance word, nickname
				if score > bestScore
					bestMatch = team
					bestScore = score

	bestMatch

exports.matchTeam = matchTeam
