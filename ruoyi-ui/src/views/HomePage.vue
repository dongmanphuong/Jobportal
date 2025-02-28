<template>
  <div>
    <HeroJob />
    <JobCategories />
    <div class="bg-light">
      <JobTabs />
      <TopCv />
    </div>
    <TopCompanies />
    <LatestNews />
    <div class="download-bg">
      <MobileApp />
    </div>

  </div>

</template>

<script>
import JobCategories from '../components/HomeSection/JobCategories.vue';
import JobTabs from '../components/HomeSection/JobTabs.vue';
import LatestNews from '../components/HomeSection/LatestNews.vue';
import MobileApp from '../components/HomeSection/MobileApp.vue';
import TopCompanies from '../components/HomeSection/TopCompanies.vue';
import TopCv from '../components/HomeSection/TopCv.vue';
import HeroJob from '../components/Layout/HeroSection/HeroJob.vue';

export default {
  components: {
    HeroJob,
    JobCategories,
    JobTabs,
    TopCv,
    TopCompanies,
    LatestNews,
    MobileApp
  }
}
</script>

<style scoped>
.download-bg{
    background-color: #fafafa;
    background-image: url("/assets/img/hero/hero-bg.svg");
    background-position: left bottom;
    background-size: cover;
    background-repeat: no-repeat;
    position: relative;
    z-index: 1;
}
</style>
