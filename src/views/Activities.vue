<template>
  <div class="animated fadeIn">
    <activities-card/>
  </div>
</template>

<script>
import ActivitiesCard from '@/views/charts/ActivitiesCard'

export default {
  name: 'activities',
  components: {
    ActivitiesCard
  },
}
</script>
