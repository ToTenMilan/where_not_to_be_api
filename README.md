```
bundle install
```

```
rails db:migrate
```

```
rails db:seed
```

# Endpoints:

## User points of interest

##### return 5 points of interest of this user (no matter the :id param, it will always return "John Tourist")
GET `http://localhost:3000/users/1/point_of_interests`

Returned density from 15 to 30

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
  // ...
]
```


## Nearby users

##### Out of 100 users, return just 27 that are no more than 170 meters from this user

GET `http://localhost:3000/users/1/nearby_users?max_distance=150`

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
  // ...
]
```

## get nearby Point of interests from selected map center

Returned density from 5 to 20

GET `http://localhost:3000/map_center/point_of_interests?max_distance=500&map_center_lat=50.052317&map_center_lng=19.951127`

```json
[
  {
    "name": "Stara Synagoga",
    "lat": 50.051515,
    "lng": 19.948894,
    "density": 10
  },
  {
    "name": "Muzeum Inzynierii Miejskiej",
    "lat": 50.049679,
    "lng": 19.947022,
    "density": 14
  },
  // ...
```

## Bump user points by 1 (i.e. to be requested by phone every 15 seconds while user is at home)

PATCH `http://localhost:3000/users/1/ad_points`

## Voivodeshipl total points

GET `http://localhost:3000/voivodeships`

## create ad

`POST http://localhost:3000/advertisement`
