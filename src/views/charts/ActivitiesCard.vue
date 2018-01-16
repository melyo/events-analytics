<template>
  <b-card>
    <b-row>
      <b-col sm="9">
        <h4 class="card-title mb-0">Activities</h4>
      </b-col>
      <b-col sm="3" class="d-none d-md-block">
          <b-form-select
            v-model="selected"
            :plain="true"
            :options="activities">
          </b-form-select>
      </b-col>
    </b-row>
    <activities-chart
      v-bind:loading="loading"
      v-bind:labels="labels"
      v-bind:hours="hours"
      class="chart-wrapper"
      style="height:300px;margin-top:40px;"
    ></activities-chart>
  </b-card>
</template>

<script>
import ActivitiesChart from '@/views/charts/ActivitiesChart'
import moment from 'moment'
import { HTTP } from '@/http'

export default {
  name: 'activities-card',
  components: {
    ActivitiesChart
  },
  data () {
    return {
      loading: 0,
      activityData: [],
      activities: [],
      selected: ''
    }
  },
  watch: {
    selected (newValue) {
      this.activitiesSum(newValue)
    }
  },
  mounted () {
    this.prevDays()
    this.activitiesList()
  },
  computed: {
    sortedActivities () {
      return this.activityData.sort((a, b) => {
        return new Date(a.date) - new Date(b.date)
      })
    },
    labels () {
      return this.sortedActivities.map((item, index) => {
        return item.date
      })
    },
    hours () {
      return this.sortedActivities.map((item, index) => {
        return item.hours
      })
    }
  },
  methods: {
    prevDays () {
      let now = moment()
      this.activityData.push({
        date: now.format('YYYY-MM-DD'),
        hours: 0
      })
      for (let i = 1; i < 7; i++) {
        now.subtract(1, 'day')
        this.activityData.push({
          date: now.format('YYYY-MM-DD'),
          hours: 0
        })
      }
    },
    activitiesList () {
      this.loading++
      HTTP.get('/api/v1/activities/list')
        .then(response => {
          this.activities = response.data.data.map((item, index) => {
            return item.name
          })
          this.selected = this.activities[0] || ''
          this.loading--
        })
        .catch(error => {
          this.loading--
        })
    },
    activitiesPerDay (activity, date) {
      this.loading++
      let params = {
        name: activity,
        date: date,
        now: moment().format('YYYY-MM-DD HH:mm:ss')
      }

      HTTP.get('/api/v1/activities/hours', { params: params })
        .then(response => {
          this.activityData.forEach(actvity => {
            if (actvity.date === date) {
              actvity.hours = response.data.data[0].minutes || 0
            }
          });
          this.loading--
        })
        .catch(error => {
          this.loading--
        })
    },
    activitiesSum (activity) {
      this.labels.forEach(label => {
        this.activitiesPerDay(activity, label)
      })
    }
  }
}
</script>
