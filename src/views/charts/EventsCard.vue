<template>
  <b-card>
    <b-row>
      <b-col sm="5">
        <h4 class="card-title mb-0">Calls Per Day</h4>
      </b-col>
      <b-col sm="7" class="d-none d-md-block">

      </b-col>
    </b-row>
    <events-chart
      class="chart-wrapper"
      style="height:300px;margin-top:40px;"
    ></events-chart>
  </b-card>
</template>

<script>
import EventsChart from '@/views/charts/EventsChart'

export default {
  name: 'events-card',
  components: {
    EventsChart
  },
}
</script>
