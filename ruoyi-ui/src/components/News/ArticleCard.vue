<template>
  <div class="card h-100" :class="{ 'bg-dark text-white': article.featured }">
    <div class="shape-container">
      <img class="card-img-top" :src="article.image" alt="Image">
    </div>
    <div class="card-body">
      <h3 class="card-title">
        <a :class="article.featured ? 'text-white' : 'text-dark'" href="#">
          {{ article.title }}
        </a>
      </h3>
      <p class="card-text">{{ article.description }}</p>
    </div>
    <div class="card-footer">
      <div class="d-flex align-items-center">
        <div class="avatar-group avatar-group-xs">
          <a v-for="(author, index) in article.authors" :key="index" class="avatar avatar-xs avatar-circle" href="#">
            <img class="avatar-img" :src="author.avatar" alt="Author">
          </a>
        </div>
        <div class="flex-grow-1 d-flex justify-content-end">
          <p class="card-text">{{ article.date }}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    article: Object
  }
};
</script>
<style lang="css" scoped>
.card-footer {
    border-top-width: 0;
    margin-top: 0;
    padding-top: 0;
}
</style>
