class window.StreetViewService

  telAvivCenter:
    lat: 32.086604
    lng: 34.789512

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
    @panorama.setPov(heading: 90, pitch: 10)

