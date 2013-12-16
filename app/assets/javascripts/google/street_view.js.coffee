class window.StreetViewService

  telAvivCenter:
    lat: 32.075257
    lng: 34.774804

  telAvivRadius: 3.5
  metersInDegree: 111300

  constructor: ->
    @panorama = new google.maps.StreetViewPanorama(document.getElementById("panorama"))
    @panorama.setPosition(new google.maps.LatLng(@telAvivCenter.lat, @telAvivCenter.lng))
    @panorama.setPov(heading: 270, pitch: 0)

