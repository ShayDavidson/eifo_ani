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
    element = document.getElementById('panorama')

    @panorama = new google.maps.StreetViewPanorama(element, @panoramaOptions)
    @panorama.setPosition(new google.maps.LatLng(options.lat, options.lng))
    @panorama.setPov(heading: @defaultHeading, pitch: @defaultPitch)

    $(element).css('pointer-events': 'none') if options.disableInteraction
    @spin() if options.spin

  spin: ->
    @panorama.setPov(heading: @panorama.getPov().heading + @spinRate, pitch: @defaultPitch)
    requestAnimationFrame(=> @spin())


