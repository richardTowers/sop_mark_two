# SOP MkII

![.github/workflows/ci.yml](https://github.com/richardTowers/sop_mark_two/workflows/.github/workflows/ci.yml/badge.svg)

Noodling around the idea of an HR tool that actually meets some of my needs.

## Thoughts on a database structure

I'd like to be able to model the following things:

* A person works on a team
* A person moves from one team to another team
* A person splits their time between two teams
* A person works part time (e.g. 4 days a week)
* A person changes their name
* A person switches roles
* A person is promoted
* A team changes its name (but is conceptually the same team)
* A team ceases to exist
* A new team is created
* A person has a line manager
* A person changes their line manager

Some complicated things:

* Modelling proposed future changes which aren't necessarily agreeed

It would be cool to do some things with multitenancy. Stuff like:

* An organisation has many people and many teams.
* People can only see people and teams for organisations they belong to.

I'd like to have a play with Authorization too. Maybe some features like:

* Your line manager (and their managers) can see your objectives
* Your line manager and certain senior people can see which teams you'd like to work on


