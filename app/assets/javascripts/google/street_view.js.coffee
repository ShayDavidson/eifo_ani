class window.StreetViewService

  telAvivCenter:
    lat: 32.075257
    lng: 34.774804

  telAvivRadius: 3.5
  metersInDegree: 111300

  panoramaOptions:
    panControl: false
    zoomControl: false
    addressControl: false
    linksControl: false
    disableDefaultUI: true

  constructor: ->
    @panorama = new google.maps.StreetViewPanorama(document.getElementById('panorama'), @panoramaOptions)
    @panorama.setPosition(new google.maps.LatLng(@telAvivCenter.lat, @telAvivCenter.lng))
    @panorama.setPov(heading: 270, pitch: 0)

