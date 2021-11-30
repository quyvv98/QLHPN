// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Pie Chart Example
var ctx = document.getElementById("myPieChart");
var myPieChart = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["Trợ giảng", "Giảng viên", "Giảng viên chính", "Phó GS","GS"],
    datasets: [{
      data: [12.21, 15.58, 11.25, 8.32,5.56,9.56],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745',"red","#e5ce6d"],
    }],
  },
});



// Pie Chart Example
var ctx = document.getElementById("myPieChart1");
var myPieChart1 = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["Sơ cấp", "Trung cấp", "Cao đẳng", "Đại học","Thạc sỹ","Tiến sỹ"],
    datasets: [{
      data: [12.21, 15.58, 11.25, 8.32,5.96,9.80],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745',"red","#781259"],
    }],
  },
});

// Pie Chart Example
var ctx = document.getElementById("myPieChart2");
var myPieChart1 = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["SQ", "QNCN", "CNVQP", "LĐHĐ","DT thiểu số"],
    datasets: [{
      data: [12.21, 15.58, 11.25, 8.32,5.96],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745',"red"],
    }],
  },
});

// Pie Chart Example
var ctx = document.getElementById("myPieChart3");
var myPieChart1 = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["Bậc 2", "Bậc 3", "Bậc 4", "Bậc 5","Bậc 6","Bậc 7"],
    datasets: [{
      data: [12.21, 15.58, 11.25, 8.32,5.96, 27.46],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745',"red","#781259"],
    }],
  },
});

// Pie Chart Example
var ctx = document.getElementById("myPieChart4");
var myPieChart1 = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["CN Khoa", "Phó CN Khoa", "CN Bộ môn", "Phó CN Bộ môn","Trưởng phòng","Phó trưởng phòng","Trưởng ban và tương đương","Phó trưởng ban và tương đương","Trợ lý","Kỹ thuật viên hướng dẫn TH,TN"],
    datasets: [{
      data: [12.21, 15.58, 11.25, 8.32,5.96,1.24,7.15,6.38,2.29,9.19],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745',"red","#781259","#28573d","#4e6a73","#d5d9c3","#1f1436"],
    }],
  },
});

// Pie Chart Example
var ctx = document.getElementById("myPieChart5");
var myPieChart1 = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["Từ 18-30", "Từ 31-49", "50 tuổi trở lên"],
    datasets: [{
      data: [12.21, 15.58, 11.25],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107'],
    }],
  },
});

// Pie Chart Example
var ctx = document.getElementById("myPieChart6");
var myPieChart1 = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["Đảng viên", "Đảng viên mới kết nạp", "Đảng viên đề xuất kết nạp"],
    datasets: [{
      data: [12.21, 15.58, 11.25],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107'],
    }],
  },
});

// Pie Chart Example
var ctx = document.getElementById("myPieChart7");
var myPieChart1 = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["Bí thư", "Phó bí thư", "Đảng ủy viên", "Thường vụ"],
    datasets: [{
      data: [12.21, 15.58, 11.25, 8.32],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745'],
    }],
  },
});

// Pie Chart Example
var ctx = document.getElementById("myPieChart8");
var myPieChart1 = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["Bí thư", "Phó bí thư", "Chi ủy viên"],
    datasets: [{
      data: [12.21, 15.58, 11.25],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107'],
    }],
  },
});

// Pie Chart Example
var ctx = document.getElementById("myPieChart9");
var myPieChart1 = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["Chủ tịch", "Phó chủ tịch", "Ủy viên", "Bí thư đoàn","Phó bí thư đoàn","Ủy viên BCH đoàn"],
    datasets: [{
      data: [12.21, 15.58, 11.25, 8.32,5.96, 27.46],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745',"red","#781259"],
    }],
  },
});

// Pie Chart Example
var ctx = document.getElementById("myPieChart10");
var myPieChart1 = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["Đề tài cấp Nhà nước", "Đề tài cấp Bộ quốc phòng", "Đề tài cấp Học viện", "Đề tài cấp cơ sở","Số sáng kiến cải tiến kỹ thuật","Giá trị thành tiền","Chủ biên giáo trình tài liệu","Tham gia giáo trình, tài liệu","Viết báo","Hướng dẫn NCKH"],
    datasets: [{
      data: [12.21, 15.58, 11.25, 8.32,5.96,1.24,7.15,6.38,2.29,9.19],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745',"red","#781259","#28573d","#4e6a73","#d5d9c3","#1f1436"],
    }],
  },
});

// Pie Chart Example
var ctx = document.getElementById("myPieChart11");
var myPieChart1 = new Chart(ctx, {
  type: 'pie',
  data: {
    labels: ["Sỹ quan", "Quân nhân chuyên nghiệp", "CN,VCQP", "LĐHĐ"],
    datasets: [{
      data: [12.21, 15.58, 11.25, 8.32],
      backgroundColor: ['#007bff', '#dc3545', '#ffc107', '#28a745'],
    }],
  },
});