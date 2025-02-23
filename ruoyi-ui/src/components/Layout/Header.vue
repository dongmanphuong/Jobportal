<template>
  <header id="header" class="navbar navbar-expand-lg navbar-start navbar-light">
    <TopBar />
    <Navbar />
</header>
</template>

<script>
import Navbar from '@/components/Layout/Header/NavBar.vue'
import TopBar from './Header/TopBar.vue';

export default {
  components: {
    Navbar,
    TopBar
  }
}
</script>
