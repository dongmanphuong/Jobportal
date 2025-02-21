<template>
  <div>
    <!-- ========== HEADER ========== -->
    <Header />
  <!-- ========== END HEADER ========== -->
  <!-- ========== MAIN CONTENT ========== -->
  <main id="content" role="main">
    <!-- Hero -->
    <Herojob />
    <!-- End Hero -->

    <!-- Card Grid -->
    <div class="container content-space-t-1 content-space-t-md-2 content-space-b-2 content-space-b-lg-3">
      <div class="row">
        <div class="col-lg-12">
          <app-main />
        </div>
        <!-- End Col -->
      </div>
      <!-- End Row -->
    </div>
    <!-- End Card Grid -->
  </main>
  <!-- ========== END MAIN CONTENT ========== -->

    <Footer />
  </div>
</template>

<script>
import '@/assets/front4/css/theme.css';
import Header from "@/components/Layout/Header.vue";
import Footer from "@/components/Layout/Footer.vue";
import { AppMain } from './components'
import Herojob from "../components/Layout/HeroSection/HeroJob.vue";
import Rightbar from "../components/Joblist/Rightbar.vue";

import 'bootstrap';

export default {
  components: {
    Header,
    Herojob,
    AppMain,
    Rightbar,
    Footer
  }
};
</script>
