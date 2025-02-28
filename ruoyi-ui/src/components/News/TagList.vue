<template>
  <div class="d-md-flex align-items-md-center text-center text-md-start">
    <span class="d-block me-md-3 mb-2 mb-md-1">Tags:</span>
    <a v-for="(tag, index) in tags" :key="index" class="btn btn-soft-secondary btn-xs rounded-pill m-1" href="javascript:;">
      {{ tag }}
    </a>
  </div>
</template>

<script>
export default {
  props: {
    tags: Array
  }
};
</script>
