<template>
  <div class="animated fadeIn">
    <events-card/>
  </div>
</template>

<script>
import EventsCard from '@/views/charts/EventsCard'

export default {
  name: 'events',
  components: {
    EventsCard
  },
}
</script>
