<template>
  <b-card>
    <b-row>
      <b-col sm="9">
        <h4 class="card-title mb-0">Events</h4>
      </b-col>
      <b-col sm="3" class="d-none d-md-block">
          <b-form-select
            v-model="selected"
            :plain="true"
            :options="events">
          </b-form-select>
      </b-col>
    </b-row>
    <events-chart
      v-bind:loading="loading"
      v-bind:labels="labels"
      v-bind:counts="counts"
      class="chart-wrapper"
      style="height:300px;margin-top:40px;"
    ></events-chart>
  </b-card>
</template>

<script>
import EventsChart from '@/views/charts/EventsChart'
import moment from 'moment'
import { HTTP } from '@/http'

export default {
  name: 'events-card',
  components: {
    EventsChart
  },
  data () {
    return {
      loading: false,
      labels: [],
      countsData: [],
      events: [],
      selected: ''
    }
  },
  computed: {
    counts () {
      let counts = []
      this.labels.forEach(label => {
        counts.push(this.getCount(label))
      })
      return counts
    }
  },
  watch: {
    selected (newValue) {
      this.eventsCount(newValue)
    }
  },
  mounted () {
    this.prevDays()
    this.eventsList()
    
  },
  methods: {
    prevDays () {
      let now = moment()
      this.labels.push(now.format('YYYY-MM-DD'))
      for (let i = 1; i < 7; i++) {
        now.subtract(1, 'day')
        this.labels.push(now.format('YYYY-MM-DD'))
      }
      this.labels = this.labels.reverse()
    },
    eventsCount(event) {
      this.loading = true
      let params = {
        name: event,
        startDate: this.labels[0],
        endDate: this.labels[this.labels.length-1]
      }
      HTTP.get('/api/v1/events/count', { params: params })
        .then(response => {
          this.countsData = response.data.data
          this.loading = false
        })
        .catch(error => {
          this.loading = false
        })
    },
    getCount (date) {
      let count = 0
      this.countsData.forEach(data => {
        if (data.date == date) {
          count = data.count
        }
      })
      return count
    },
    eventsList () {
      this.loading = true
      HTTP.get('/api/v1/events/list')
        .then(response => {
          this.events = response.data.data.map((item, index) => {
            return item.name
          })
          this.selected = this.events[0] || ''
          this.loading = false
        })
        .catch(error => {
          this.loading = false
        })
    }
  }
}
</script>
