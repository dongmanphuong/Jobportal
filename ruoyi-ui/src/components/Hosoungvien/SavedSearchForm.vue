<template>
    <div class="search-container">
      <input
        v-model="searchText"
        type="text"
        class="form-control"
        placeholder="Tìm kiếm hồ sơ..."
        @keyup.enter="search"
      />
  
      <button class="btn btn-primary mt-2" @click="search">🔍 Tìm kiếm</button>
    </div>
  </template>
  
  <script>
  export default {
    data() {
      return {
        searchText: ""
      };
    },
    methods: {
      search() {
        this.$emit("search", this.searchText);
      }
    }
  };
  </script>
  
  <style scoped>
  .search-container {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-bottom: 20px;
  }
  
  .form-control {
    width: 100%;
    max-width: 600px;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 5px;
  }
  
  .btn {
    width: 100%;
    max-width: 150px;
  }
  </style>
  