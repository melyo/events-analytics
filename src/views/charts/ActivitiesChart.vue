<script>
import { Line } from 'vue-chartjs'

const chartColor = '#4dbd74'

function convertHex (hex, opacity) {
  hex = hex.replace('#', '')
  const r = parseInt(hex.substring(0, 2), 16)
  const g = parseInt(hex.substring(2, 4), 16)
  const b = parseInt(hex.substring(4, 6), 16)

  const result = 'rgba(' + r + ',' + g + ',' + b + ',' + opacity / 100 + ')'
  return result
}

export default {
  name: 'activities-chart',
  extends: Line,
  props: ['loading', 'labels', 'hours'],
  mounted () {
    this.reRenderChart()
  },
  watch: {
    loading (newVal) {
      if (!newVal) {
        this.reRenderChart()
      }
    }
  },
  methods: {
    reRenderChart () {
      if (this.$data._chart) {
          this.$data._chart.destroy()
      }

      this.renderChart({
        labels: this.labels,
        datasets: [
          {
            label: 'Total Hours',
            backgroundColor: convertHex(chartColor, 10),
            borderColor: chartColor,
            pointBackgroundColor: '#f89d1d',
            pointHoverBackgroundColor: '#fff',
            borderWidth: 2,
            data: this.hours,
            lineTension: 0
          }
        ]
      },
      {
        maintainAspectRatio: false,
        legend: {
          display: false
        },
        scales: {
          xAxes: [{
            gridLines: {
              drawOnChartArea: false
            }
          }],
          yAxes: [{
            ticks: {
              beginAtZero: true,
              maxTicksLimit: 5
            },
            gridLines: {
              display: true
            }
          }]
        },
        elements: {
          point: {
            radius: 2,
            hitRadius: 10,
            hoverRadius: 4,
            hoverBorderWidth: 3
          }
        }
      })
    }
  }
}
</script>
