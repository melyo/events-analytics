# Events Analytics

### Dependencies

- Node.js
- Express.js
- MySQL
- Vue.js
- Scss

### Set up

``` bash
# clone this repository
git clone https://github.com/melyo/events-analytics.git

# go to project root folder / directory
cd events-analytics

# install dependencies
npm install

# set up MySQL as database then create and configure .env file
cp .env.sample .env

# import data dump from migration/events_analytics_dump.sql
mysql -u root -p database < migration/events_analytics_dump.sql

# build frontend for production with minification
npm run build

# run Express.js
npm start
```

### Required API Routes

| Method    | URI                           | Description               | Request Body              |
| ---       | ---                           | ---                       | ---                       |
| POST      | /api/v1/events                | track events              | `{ "name": "purchase 1" }`|
| POST      | /api/v1/activities            | track started activity    | `{ "name": "level 1" }`   |
| PATCH     | /api/v1/activities/{id}/end   | track ended activity      |                           |

### Miscellaneous REST API Routes for Frontend

| Method    | URI               |
| ---       | ---               |
| GET       | /events           |
| GET       | /events/list      |
| GET       | /events/count     |
| GET       | /activities       |
| GET       | /activities/list  |
| GET       | /activities/hours |
