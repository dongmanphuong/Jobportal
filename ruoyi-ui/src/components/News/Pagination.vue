<template>
  <nav aria-label="Page navigation">
    <ul class="pagination justify-content-end">
      <!-- Nút Previous -->
      <li class="page-item" :class="{ disabled: currentPage === 1 }">
        <a class="page-link" href="#" @click.prevent="changePage(currentPage - 1)" aria-label="Previous">
          <span aria-hidden="true">
            <i class="bi-chevron-double-left small"></i>
          </span>
        </a>
      </li>

      <!-- Danh sách các trang -->
      <li v-for="page in visiblePages" :key="page" class="page-item" :class="{ active: page === currentPage }">
        <a class="page-link" href="#" @click.prevent="changePage(page)">{{ page }}</a>
      </li>

      <!-- Nút Next -->
      <li class="page-item" :class="{ disabled: currentPage === totalPages }">
        <a class="page-link" href="#" @click.prevent="changePage(currentPage + 1)" aria-label="Next">
          <span aria-hidden="true">
            <i class="bi-chevron-double-right small"></i>
          </span>
        </a>
      </li>
    </ul>
  </nav>
</template>

<script>
export default {
  props: {
    currentPage: {
      type: Number,
      required: true
    },
    totalPages: {
      type: Number,
      required: true
    }
  },
  computed: {
    visiblePages() {
      let pages = [];
      let startPage = Math.max(1, this.currentPage - 2);
      let endPage = Math.min(this.totalPages, this.currentPage + 2);

      for (let i = startPage; i <= endPage; i++) {
        pages.push(i);
      }

      // Xử lý dấu `...` nếu cần
      if (startPage > 1) {
        pages.unshift("...");
        pages.unshift(1);
      }
      if (endPage < this.totalPages) {
        pages.push("...");
        pages.push(this.totalPages);
      }

      return pages;
    }
  },
  methods: {
    changePage(page) {
      if (page !== "..." && page >= 1 && page <= this.totalPages) {
        this.$emit("page-change", page);
      }
    }
  }
};
</script>
