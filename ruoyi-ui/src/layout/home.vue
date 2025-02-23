<template>
  <div>
    <Header />
    <main id="content" role="main">
      <app-main />
    </main>
    <Footer />
  </div>
</template>

<script>
import '@/assets/front4/css/theme.css';
import Header from "@/components/Layout/Header.vue";
import Footer from "@/components/Layout/Footer.vue";

import 'bootstrap';
import { AppMain } from './components';

export default {
  components: {
    Header,
    AppMain,
    Footer
  }
};
</script>
