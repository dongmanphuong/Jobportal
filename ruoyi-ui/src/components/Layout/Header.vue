<template>
  <header id="header" class="navbar navbar-expand-lg navbar-start navbar-light">
    <NavBar />
    <TopBar />
</header>
</template>

<script>
import Navbar from '@/components/Layout/Header/Navbar.vue'
import TopBar from './Header/Topbar.vue';

export default {
  components: {
    Navbar,
    TopBar
  }
}
</script>
