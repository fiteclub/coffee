# Beverage

`GET /` - see location of next event

`GET /api/events` - get 10 most recent events
```json
[
   {
      "date":"September 27, 2017",
      "time":"8:30AM",
      "location":"St. Clare Coffee, 654 Mission St, San Francisco, CA 94105"
   }
]
```
`GET /api/events/future` - get future events
```json
[
   {
      "date":"September 27, 2017",
      "time":"8:30AM",
      "location":"St. Clare Coffee, 654 Mission St, San Francisco, CA 94105"
   }
]
```