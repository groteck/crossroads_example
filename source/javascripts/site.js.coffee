#= require vendor/signals.min
#= require vendor/hasher.min
#= require vendor/crossroads.min
#

window.loadIndex = () ->
	$('.message').html('<div> Index section </div>')
window.loadContact = () ->
	$('.message').html('<div> Contact section </div>')

window.goToContact = () ->
	router.parse('/contact')
window.goToIndex = () ->
	router.parse('')

$(document).ready ->
	window.router = crossroads.create()
	router.addRoute('', loadIndex)
	router.addRoute('/contact', loadContact)

	#setup crossroads
	router.routed.add(console.log, console); #log all routes
	 
	#setup hasher
	parseHash = (newHash, oldHash) ->
	  router.parse(newHash)
	hasher.initialized.add(parseHash) #parse initial hash
	hasher.changed.add(parseHash) #parse hash changes
	hasher.init() #start listening for history change
