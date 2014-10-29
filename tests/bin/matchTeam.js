// Generated by CoffeeScript 1.8.0

/*
	Copyright 2014 David Pearson.
	All rights reserved.
 */

(function() {
  var assert, teams, vows;

  assert = require("assert");

  teams = require("../../bin");

  vows = require("vows");

  vows.describe("Team Name Matching").addBatch({
    "matchTeam": {
      topic: function() {
        return [teams.matchTeam("stillers"), teams.matchTeam("Pittsburgh Steelers"), teams.matchTeam("jes")];
      },
      "We can handle a nickname": function(topic) {
        return assert.isTrue(topic[0] === "Pittsburgh Steelers");
      },
      "We can handle a full team name": function(topic) {
        return assert.isTrue(topic[1] === "Pittsburgh Steelers");
      },
      "We can handle a malformed nickname": function(topic) {
        return assert.isTrue(topic[2] === "New York Jets");
      }
    }
  })["export"](module);

}).call(this);
