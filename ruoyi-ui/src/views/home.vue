<template>
  <div>
    <MenuTop />
    <VBanner />
    <SlideBanner />
    <JobCategories />
    <JobList />
    <TopBusinesses />
    <JobProfiles />
    <BannerSlider />
    <BestJobs />
    <NewsEvents />
    <VideoCareerGuide />
    <AppDownloadSection />
    <SupportSection />
    <FooterSection />
  </div>
</template>

<script>
import MenuTop from '../components/MenuTop.vue'
import VBanner from '../components/VBanner.vue'
import SlideBanner from '../components/SlideBanner.vue'
import JobCategories from '../components/JobCategories.vue';
import JobList from '../components/JobList.vue';
import TopBusinesses from '../components/TopBusinesses.vue';
import JobProfiles from '../components/JobProfiles.vue';
import BannerSlider from '../components/BannerSlider.vue';
import BestJobs from '../components/BestJobs.vue';
import NewsEvents from '../components/NewsEvents.vue';
import VideoCareerGuide from '../components/VideoCareerGuide.vue';
import AppDownloadSection from '../components/AppDownloadSection.vue';
import FooterSection from '../components/FooterSection.vue';
import SupportSection from '../components/SupportSection.vue';


export default {
  name: 'Index',
  components: {
    MenuTop,
    VBanner,
    SlideBanner,
    JobCategories,
    JobList,
    TopBusinesses,
    JobProfiles,
    BannerSlider,
    BestJobs,
    NewsEvents,
    VideoCareerGuide,
    AppDownloadSection,
    SupportSection,
    FooterSection
  }
}
</script>

<style lang="scss" scoped>
.dashboard-editor-container {
  padding: 32px;
  background-color: rgb(240, 242, 245);
  position: relative;

  .chart-wrapper {
    background: #fff;
    padding: 16px 16px 0;
    margin-bottom: 32px;
  }
}

@media (max-width:1024px) {
  .chart-wrapper {
    padding: 8px;
  }
}
</style>
