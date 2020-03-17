```
bundle install
```

```
rails db:migrate
```

```
rails db:seed
```

Endpoints:

## 1. User points of interest

##### return 5 points of interest of this user
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


## 2. Nearby users

##### Out of 100 users, return just 27 that are no more than 170 meters from this user
`http://localhost:3000/users/1/nearby_users`

```json
[
  {
    "lat": 50.04966,
    "lng": 19.94475
  },
  {
    "lat": 50.05003868420221,
    "lng": 19.947055045766472
  },
  {
    "lat": 50.05006230013177,
    "lng": 19.94703378954854
  },
  // ...
  {
    "lat": 50.05002828278759,
    "lng": 19.94705998298592
  },
  {
    "lat": 50.05001253775421,
    "lng": 19.947056024005562
  }
]
```
