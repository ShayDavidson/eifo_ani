class window.StreetViewService

  telAvivRadius: 3.5
  metersInDegree: 111300

  defaultHeading: 90
  defaultPitch: 10

  spinRate: 0.1

  panoramaOptions:
    panControl: false
    zoomControl: false
    addressControl: false
    linksControl: false
    disableDefaultUI: true

  constructor: (options = {}) ->
    _.extend(@panoramaOptions, draggable: false, scrollwheel: false, clickToGo: false) if options.disableInteraction

    @panorama = new google.maps.StreetViewPanorama(document.getElementById('panorama'), @panoramaOptions)
    @panorama.setPosition(new google.maps.LatLng(options.lat, options.lng))
    @panorama.setPov(heading: @defaultHeading, pitch: @defaultPitch)

    @spin() if options.spin

  spin: ->
    @panorama.setPov(heading: @panorama.getPov().heading + @spinRate, pitch: @defaultPitch)
    requestAnimationFrame(=> @spin())


