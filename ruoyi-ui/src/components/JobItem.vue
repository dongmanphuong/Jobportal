<!-- JobItem.vue -->
<template>
    <div class="job-item" :class="{ 'hot-job': job.isHot }">
      <div class="job-logo">
        <img :src="job.image" :alt="job.title" @error="setDefaultImage" />
      </div>
      <div class="job-info">
        <a :href="job.link" class="job-title">{{ job.title }}</a>
        <p class="job-company">{{ job.company }}</p>
        <div class="job-meta">
          <span class="job-location">
            <i class="fa fa-map-marker"></i> {{ job.location }}
          </span>
          <span class="job-deadline">
            <i class="fa fa-calendar"></i> {{ job.deadline }}
          </span>
          <span class="job-exp">
            <i class="fa fa-briefcase"></i> {{ job.experience }}
          </span>
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    props: {
      job: Object,
    },
    methods: {
      setDefaultImage(event) {
        event.target.src = "http://file2.vieclamnamdinh.gov.vn/image/noimage/9.jpg";
      },
    },
  };
  </script>
  
  <style scoped>
  .job-item {
    display: flex;
    align-items: center;
    background: #fff;
    border: 1px solid #ddd;
    border-radius: 8px;
    padding: 15px;
    margin-bottom: 15px;
    transition: 0.3s;
  }
  
  .hot-job {
    border: 2px solid #ff7b7b !important;
    background: #fff5f5 !important;
  }
  
  .job-logo img {
    width: 60px;
    height: 60px;
    object-fit: cover;
    border-radius: 5px;
  }
  
  .job-info {
    flex: 1;
    padding-left: 15px;
  }
  
  .job-title {
    font-size: 16px;
    font-weight: bold;
    color: #d9534f;
    text-decoration: none;
  }
  
  .job-company {
    font-size: 14px;
    color: #666;
  }
  
  .job-meta {
    font-size: 13px;
    color: #333;
    display: flex;
    gap: 15px;
  }
  
  .job-deadline {
    color: red;
    font-weight: bold;
  }
  
  .job-exp {
    color: green;
    font-weight: bold;
  }
  </style>
  