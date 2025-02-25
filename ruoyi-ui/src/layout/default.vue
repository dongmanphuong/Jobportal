<template>
  <div>
    <!-- ========== HEADER ========== -->
    <Header />
  <!-- ========== END HEADER ========== -->
  <!-- ========== MAIN CONTENT ========== -->
  <main id="content" role="main">
    <app-main />
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

import 'bootstrap';

export default {
  components: {
    Header,
    AppMain,
    Footer
  }
};
</script>
