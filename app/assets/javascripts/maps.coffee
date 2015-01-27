$("#mapModal").on "shown.bs.modal", ->
  initialize()

mapStyle1 = [
  {
    featureType: "all"
    stylers: [
      {
        saturation: 0
      }
      {
        hue: "#e7ecf0"
      }
    ]
  }
  {
    featureType: "road"
    stylers: [saturation: -70]
  }
  {
    featureType: "transit"
    stylers: [visibility: "off"]
  }
  {
    featureType: "poi"
    stylers: [visibility: "off"]
  }
  {
    featureType: "water"
    stylers: [
      {
        visibility: "simplified"
      }
      {
        saturation: -60
      }
    ]
  }
]

mapStyle2 = [
  featureType: "all"
  elementType: "all"
  stylers: [
    {
      invert_lightness: true
    }
    {
      saturation: 10
    }
    {
      lightness: 30
    }
    {
      gamma: 0.5
    }
    {
      hue: "#435158"
    }
  ]
]