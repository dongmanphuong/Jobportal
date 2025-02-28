<template>
  <form @submit.prevent="search">
    <div class="input-group">
      <input v-model="query" type="text" class="form-control" placeholder="Search articles">
      <button type="submit" class="btn btn-primary">
        <i class="bi-search"></i>
      </button>
    </div>
  </form>
</template>

<script>
export default {
  data() {
    return { query: '' };
  },
  methods: {
    search() {
      this.$emit('search', this.query);
    }
  }
};
</script>
