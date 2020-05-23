// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Bar Chart Example
var ctx = document.getElementById("myBarChart");

$.ajax({
	
})
var myLineChart = new Chart(ctx, {
	

  type: 'bar',
  data: {
    labels: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    datasets: [{
      label: "Revenue",
      backgroundColor: "#28a745",
      borderColor: "#28a745",
      data: [4215, 5312, 6251, 7841, 9821, 14984, 14984, 14984, 14984, 14984, 14984, 14984]},
      {label: "Revenue",
    	  backgroundColor: "#ffc107",
          borderColor: "#ffc107",
      data: [4215, 5312, 6251, 7841, 9821, 14984, 14984, 14984, 14984, 14984, 14984, 14984]
    }],
  },
  options: {
    scales: {
      xAxes: [{
        time: {
          unit: 'month'
        },
        gridLines: {
          display: false
        },
        ticks: {
          maxTicksLimit: 13
        }
      }],
      yAxes: [{
        ticks: {
          min: 0,
          max: 15000,
          maxTicksLimit: 5
        },
        gridLines: {
          display: true
        }
      }],
    },
    legend: {
      display: false
    }
  }
});
