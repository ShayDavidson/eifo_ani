class window.StreetViewService

  constructor: ->
    @panorama = new google.maps.StreetViewPanorama(document.getElementById("panorama"))
    @panorama.setPosition(new google.maps.LatLng(32.0833, 34.8000))