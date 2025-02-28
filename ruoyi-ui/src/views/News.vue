<template>
  <div>
    <main id="content" role="main">
      <!-- Hero Section -->
      <div class="bg-img-start" style="background-image: url(/assets/svg/components/card-11.svg);">
        <div class="container content-space-t-2 content-space-t-lg-3 content-space-b-2">
          <div class="w-md-75 w-lg-50 text-center mx-md-auto">
            <h1>Bản tin thị trường</h1>
            <p>Thông tin được cập nhật liên tục qua nhiều kiênh với độ chính xác cao</p>
          </div>
        </div>
      </div>
      <!-- End Hero Section -->

      <div class="container content-space-b-2 content-space-b-lg-3 content-space-t-2">
        <!-- Filters and Search -->
        <div class="row justify-content-md-between align-items-md-center mb-7">
          <div class="col-md-5 mb-5 mb-md-0">
            <TagList :tags="tags" />
          </div>
          <div class="col-md-5 col-lg-4">
            <SearchBar @search="handleSearch" />
          </div>
        </div>
        <!-- End Filters and Search -->

        <!-- Featured Article -->
        <FeaturedArticle :article="featuredArticle" />
        <!-- End Featured Article -->

        <!-- Article List -->
        <div class="row mb-7">
          <div v-for="(article, index) in articles" :key="index" class="col-sm-6 col-lg-4 mb-4">
            <ArticleCard :article="article" />
          </div>
        </div>
        <!-- End Article List -->

        <!-- Pagination -->
        <Pagination
          :currentPage="currentPage"
          :totalPages="totalPages"
          @page-change="handlePageChange"
        />
        <!-- End Pagination -->
      </div>
    </main>
  </div>
</template>

<script>
import TagList from '../components/News/TagList.vue';
import SearchBar from '../components/News/SearchBar.vue';
import ArticleCard from '../components/News/ArticleCard.vue';
import FeaturedArticle from '../components/News/FeaturedArticle.vue';
import Pagination from '../components/News/Pagination.vue';

export default {
  components: {
    TagList,
    SearchBar,
    ArticleCard,
    FeaturedArticle,
    Pagination
  },
  data() {
    return {
      tags: ["Business", "Health", "Environment", "Adventure"],
      searchQuery: '',
      currentPage: 1,
      totalPages: 3,
      featuredArticle: {
        title: "Trung tâm Lao động ngoài nước ký kết các hợp đồng cung ứng lao động có tay nghề đi làm việc Cộng hòa Liên bang Đức, Nhật Bản",
        description: "Được sự đồng ý của Lãnh đạo Bộ Lao động – Thương binh và Xã hội, sau một thời gian đàm phán, Trung...",
        image: "/images/news-1.jpg",
        date: "July 15",
        authors: [
          { name: "Aaron Larsson", avatar: "/assets/img/160x160/img3.jpg" },
          { name: "John O'nolan", avatar: "/assets/img/160x160/img4.jpg" }
        ]
      },
      articles: [
        {
          title: "Đơn hàng Công ty HHCP kim loại Đại Hoa",
          description: "Thông báo tuyển chọn lao động đi làm việc tại Đài Loan Đơn hàng Công ty HHCP kim loại Đại Hoa",
          image: "/images/news-2.jpg",
          date: "July 15",
          authors: [
            { name: "Nataly Gaga", avatar: "/assets/img/160x160/img9.jpg" },
            { name: "Emily Milda", avatar: "/assets/img/160x160/img8.jpg" }
          ]
        },
        {
          title: "Gia hạn thời gian Tuyển chọn thực tập sinh nữ đi thực tập kỹ thuật tại Nhật Bản",
          description: "Gia hạn thời gian Tuyển chọn thực tập sinh Theo Chương trình IM JAPAN Đợt 1/2025",
          image: "/assets/svg/components/shape-7.svg",
          date: "July 15",
          featured: true,
          authors: [
            { name: "Aaron Larsson", avatar: "/assets/img/160x160/img3.jpg" }
          ]
        },
        {
          title: "Hội nghị Tư vấn giới thiệu việc làm và tư vấn hướng nghiệp tại trường Cao đẳng Bắc Kạn",
          description: "Sáng ngày 19/02/2025, Trung tâm Dịch vụ việc làm Bắc Kạn phối hợp Trường Cao đẳng Bắc Kạn tổ chức...",
          image: "/images/news-3.jpg",
          date: "July 15",
          authors: [
            { name: "Hanna Wolfe", avatar: "/assets/img/160x160/img10.jpg" },
            { name: "John O'nolan", avatar: "/assets/img/160x160/img6.jpg" }
          ]
        },
        {
          title: "Đơn hàng Công ty HHCP kim loại Đại Hoa",
          description: "Thông báo tuyển chọn lao động đi làm việc tại Đài Loan Đơn hàng Công ty HHCP kim loại Đại Hoa",
          image: "/images/news-4.jpg",
          date: "July 15",
          authors: [
            { name: "Nataly Gaga", avatar: "/assets/img/160x160/img9.jpg" },
            { name: "Emily Milda", avatar: "/assets/img/160x160/img8.jpg" }
          ]
        },
        {
          title: "Đơn hàng Công ty HHCP kim loại Đại Hoa",
          description: "Thông báo tuyển chọn lao động đi làm việc tại Đài Loan Đơn hàng Công ty HHCP kim loại Đại Hoa",
          image: "/images/news-2.jpg",
          date: "July 15",
          authors: [
            { name: "Nataly Gaga", avatar: "/assets/img/160x160/img9.jpg" },
            { name: "Emily Milda", avatar: "/assets/img/160x160/img8.jpg" }
          ]
        },
        {
          title: "Đơn hàng Công ty HHCP kim loại Đại Hoa",
          description: "Thông báo tuyển chọn lao động đi làm việc tại Đài Loan Đơn hàng Công ty HHCP kim loại Đại Hoa",
          image: "/images/news-3.jpg",
          date: "July 15",
          authors: [
            { name: "Nataly Gaga", avatar: "/assets/img/160x160/img9.jpg" },
            { name: "Emily Milda", avatar: "/assets/img/160x160/img8.jpg" }
          ]
        }
      ]
    };
  },
  methods: {
    handleSearch(query) {
      this.searchQuery = query;
      console.log("Searching for:", query);
    },
    handlePageChange(page) {
      this.currentPage = page;
      console.log("Page changed to:", page);
    }
  }
};
</script>
