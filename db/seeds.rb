# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#delete all data first
Post.all.delete_all


#Create some seed posts
Post.create([
	{
		title: "Hello World",
		author: "Daish",
		publication: "Buzzfeed",
		url: "http://buzzfeed.com/buzworthy",
		pull_quote: "",
		body: "The temperature inside this apple pie is over one thousand degrees. If I squeeze it, a jet of molten bramley apple will squirt out. Could go your way; could go mine. Either way, one of us is going down."
	}, 
	{
		title:"What up with airline food?",
		author: "Jerry Seinfield",
		publication: "Forbes",
		url: "http://forbes.com",
		pull_quote: "HAHAHAHAHAHAHAHA LOL",
		body: "And, can I have the same, please? But with different shaped pasta. What do you call those pasta in bows? Like a bow-tie, but miniature? Like an action man bow-tie."
	}, 
	{
		title: "So you want to be a ruby developer",
		author: "Satan",
		publication: "Scientific American",
		url: "http://scientificamerican.com",
		pull_quote: "See you in hell",
		body: "Swallow is a detective who tackles vandalism. Bit of a maverick, not afraid to break the law if he thinks it’s necessary. He’s not a criminal, but he will, perhaps, travel 80mph on the motorway if he, for example, he wants to get somewhere quickly…"
	}, 
	{
		title: "Welcome to the jungle",
		author: "Slash",
		publication: "http://gunsandroses.com/blog",
		pull_quote: "You're gonna die",
		body: "Oooh scary Irish men. Would you like to recruit me? I like your berets. They're worn by Saddam Hussain, Frank Spencer, the French."
	}
])