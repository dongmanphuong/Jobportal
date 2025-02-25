<template>
  <header id="header" class="navbar navbar-expand-lg navbar-start navbar-light">
    <Topbar />
    <Navbar />
</header>
</template>

<script>
import Topbar from './Header/Topbar.vue';
import Navbar from "./Header/NavBarStatic.vue";
export default {
  components: {
    Navbar,
    Topbar
  }
}
</script>
