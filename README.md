`rails db:seed`

Endpoints:

### user points of interest
`http://localhost:3000/users/1/point_of_interests`

```json
[
  {
    "name": "Bazylika bozego ciała w krakowie",
    "loc": [
      {
        "lat": 50.049697,
        "lng": 19.944797
      }
    ],
    "density": 32
  },
  {
    "name": "Cafe Kladka",
    "loc": [
      {
        "lat": 50.047635,
        "lng": 19.946605
      }
    ],
    "density": 32
  },
  {
    "name": "Stara Synagoga",
    "loc": [
      {
        "lat": 50.051515,
        "lng": 19.948894
      }
    ],
    "density": 32
  },
  {
    "name": "Muzeum inzynierii miejskiej",
    "loc": [
      {
        "lat": 50.049679,
        "lng": 19.947022
      }
    ],
    "density": 32
  },
  {
    "name": "Studio Qulinarne",
    "loc": [
      {
        "lat": 50.049328,
        "lng": 19.947086
      }
    ],
    "density": 32
  }
]
```


### nearby users
`http://localhost:3000/nearby_users?max_meters=100`

