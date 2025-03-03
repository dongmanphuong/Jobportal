<template>
        

  <div class="container">
    <h2 class="title">Thông tin tuyển dụng việc làm</h2>
    <!-- 🔍 Tìm kiếm & Bộ lọc -->
    <div class="search-box">
      <div class="modern-filter-row">
        <div class="search-group">
          <input
            v-model="searchText"
            type="text"
            class="search-input"
            placeholder="Nhập từ khóa tìm kiếm..."
            @keyup.enter="searchJob"
          />
          <button @click="searchJob" class="btn search-btn">🔍  </button>
        </div>
        
        <div class="select-item">
          <v-select
            v-model="selectedSalary"
            :options="salaryOptions"
            label="label"
            placeholder="Mức lương"
            class="modern-select"
            :clearable="true"
          ></v-select>
        </div>
        
        <div class="select-item">
          <v-select
            v-model="selectedExperience"
            :options="experienceOptions"
            label="label"
            placeholder="Kinh nghiệm"
            class="modern-select"
            :clearable="true"
          ></v-select>
        </div>
        
        <div class="select-item">
          <v-select
            v-model="selectedStatus"
            :options="statusOptions"
            label="label"
            placeholder="Trạng thái"
            class="modern-select"
            :clearable="true"
          ></v-select>
        </div>
      </div>
    </div>

    <!-- 📋 Danh sách tin tuyển dụng -->
    <div class="box">

      <div class="table-container">
        <transition name="table-fade" mode="out-in">
          <table class="table" :key="currentPage">
            <thead>
              <tr>
                <th><input type="checkbox" v-model="selectAll" @change="toggleSelectAll" /></th>
                <th>STT</th>
                <th>✏️</th>
                <th>Tin tuyển dụng</th>
                <th>Thông tin tuyển dụng</th>
                <th>Thời hạn</th>
                <th>Thông tin hồ sơ</th>
              </tr>
            </thead>
            <tbody>
              <tr v-for="(job, index) in paginatedJobs" :key="job.id">
                <td><input type="checkbox" v-model="selectedJobs" :value="job.id" /></td>
                <td>{{ index + 1 }}</td>
                <td><a :href="'system/tuyendung/' + job.id" class="edit-link">✏️</a></td>
                <td>{{ job.title }} <div class="small-text">{{ job.location }}</div></td>
                <td>
                  <div>Kinh nghiệm: {{ job.experience }}</div>
                  <div>Mức lương: {{ job.salary }}</div>
                </td>
                <td>{{ job.deadline }}</td>
                <td>
                  <div><input type="checkbox" disabled :checked="job.isApproved" /> Đã duyệt</div>
                  <div><input type="checkbox" disabled :checked="job.isHot" /> Tin nổi bật</div>
                  <div><input type="checkbox" disabled :checked="job.isUrgent" /> Tuyển gấp</div>
                </td>
              </tr>
            </tbody>
          </table>
        </transition>
      </div>

      <!-- Phân trang -->
      <div class="pagination">
        <div class="pagination-left">
          <div class="pagination-info">
            Hiển thị {{ startIndex + 1 }}-{{ endIndex }} của {{ totalItems }} kết quả
          </div>
          <div class="items-per-page">
            <label class="items-per-page-label">Hiển thị</label>
            <select 
              v-model="itemsPerPage" 
              class="items-per-page-select"
              @change="handleItemsPerPageChange"
            >
              <option v-for="n in itemsPerPageOptions" :key="n" :value="n">
                {{ n }}
              </option>
            </select>
            <span class="items-per-page-label">kết quả mỗi trang</span>
          </div>
        </div>
        
        <div class="pagination-controls">
          <button 
            class="pagination-btn" 
            :disabled="currentPage === 1"
            @click="changePage(currentPage - 1)"
          >
            <span>←</span>
          </button>
          <div class="pagination-pages">
            <button 
              v-for="page in displayedPages" 
              :key="page"
              class="pagination-btn"
              :class="{ active: currentPage === page }"
              @click="changePage(page)"
            >
              {{ page }}
            </button>
          </div>
          <button 
            class="pagination-btn"
            :disabled="currentPage === totalPages"
            @click="changePage(currentPage + 1)"
          >
            <span>→</span>
          </button>
        </div>
      </div>

      <!-- 🛠 Nút thao tác -->
      <div class="box-footer">
        <button @click="goBack" class="btn cancel">Quay lại</button>
        <button @click="addNew" class="btn add">Thêm mới</button>
        <button @click="deleteJobs" class="btn delete" :disabled="selectedJobs.length === 0">Xóa</button>
      </div>
    </div>
  </div>
</template>

<script>
import vSelect from "vue-select";
import "vue-select/dist/vue-select.css";
import { useRouter } from 'vue-router';

export default {
  components: { vSelect },
  setup() {
    const router = useRouter();
    return { router };
  },
  data() {
    return {
      searchText: "",
      selectedSalary: "",
      selectedExperience: "",
      selectedStatus: "",
      selectAll: false,
      selectedJobs: [],
      salaryOptions: [
        { value: "", label: "- - Mức lương - -" },
        { value: "3-5", label: "3-5 triệu" },
        { value: "5-7", label: "5-7 triệu" }
      ],
      experienceOptions: [
        { value: "", label: "- - Kinh nghiệm - -" },
        { value: "0", label: "Chưa có kinh nghiệm" },
        { value: "1", label: "Dưới 1 năm" }
      ],
      statusOptions: [
        { value: "", label: "- - Trạng thái - -" },
        { value: "approved", label: "Đã duyệt" },
        { value: "hot", label: "Tin nổi bật" },
        { value: "urgent", label: "Tuyển gấp" }
      ],
      currentPage: 1,
      itemsPerPage: 10,
      itemsPerPageOptions: [5, 10, 20, 50, 100],
      jobs: [
        {
          id: "1",
          title: "Nhân viên lắp ráp máy móc",
          location: "Nam Định",
          experience: "2-5 năm",
          salary: "10-12 triệu",
          deadline: "30/06/2025",
          isApproved: true,
          isHot: true,
          isUrgent: false
        },
        {
          id: "2",
          title: "Kỹ sư phần mềm",
          location: "Hà Nội",
          experience: "3-5 năm",
          salary: "20-25 triệu",
          deadline: "15/07/2025",
          isApproved: true,
          isHot: false,
          isUrgent: true
        }
      ]
    };
  },
  computed: {
    filteredJobs() {
      return this.jobs.filter(job => {
        return (
          (this.searchText === "" || job.title.toLowerCase().includes(this.searchText.toLowerCase())) &&
          (this.selectedSalary === "" || job.salary.includes(this.selectedSalary)) &&
          (this.selectedExperience === "" || job.experience.includes(this.selectedExperience)) &&
          (this.selectedStatus === "" ||
            (this.selectedStatus === "approved" && job.isApproved) ||
            (this.selectedStatus === "hot" && job.isHot) ||
            (this.selectedStatus === "urgent" && job.isUrgent))
        );
      });
    },
    paginatedJobs() {
      const startIndex = (this.currentPage - 1) * this.itemsPerPage;
      const endIndex = startIndex + this.itemsPerPage;
      return this.filteredJobs.slice(startIndex, endIndex);
    },
    totalPages() {
      return Math.ceil(this.filteredJobs.length / this.itemsPerPage);
    },
    totalItems() {
      return this.filteredJobs.length;
    },
    startIndex() {
      return (this.currentPage - 1) * this.itemsPerPage;
    },
    endIndex() {
      const end = this.startIndex + this.itemsPerPage;
      return end > this.totalItems ? this.totalItems : end;
    },
    displayedPages() {
      const delta = 2;
      const range = [];
      const rangeWithDots = [];
      let l;
      
      range.push(1);
      
      for (let i = this.currentPage - delta; i <= this.currentPage + delta; i++) {
        if (i < this.totalPages && i > 1) {
          range.push(i);
        }
      }
      
      range.push(this.totalPages);
      
      for (let i of range) {
        if (l) {
          if (i - l === 2) {
            rangeWithDots.push(l + 1);
          } else if (i - l !== 1) {
            rangeWithDots.push('...');
          }
        }
        rangeWithDots.push(i);
        l = i;
      }
      
      return rangeWithDots;
    }
  },
  methods: {
    searchJob() {
      console.log("Tìm kiếm:", this.searchText);
    },
    toggleSelectAll() {
      this.selectedJobs = this.selectAll ? this.filteredJobs.map(job => job.id) : [];
    },
    goBack() {
      console.log("Quay lại");
    },
    addNew() {
      this.$router.push('/system/recruitment/postjob');
    },
    deleteJobs() {
      if (confirm("Bạn có muốn xóa các tin đã chọn?")) {
        this.jobs = this.jobs.filter(job => !this.selectedJobs.includes(job.id));
        this.selectedJobs = [];
      }
    },
    handleItemsPerPageChange() {
      this.currentPage = 1;
    },
    changePage(page) {
      if (page >= 1 && page <= this.totalPages) {
        setTimeout(() => {
          this.currentPage = page;
        }, 50);
      }
    }
  }
};
</script>

<style>
.container {
  max-width: 100%;
  margin: auto;
  padding: 20px;
  background: #f5f7f9;
}

.title {
  font-size: 20px;
  font-weight: 600;
  color: #1f2937;
  margin-bottom: 20px;
  padding-bottom: 12px;
  border-bottom: 2px solid #e5e7eb;
}

/* 🔍 Vùng tìm kiếm & bộ lọc */
.search-box {
  background: #fff;
  padding: 16px;
  border-radius: 8px;
  margin-bottom: 20px;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
}

.search-box-title {
  font-size: 16px;
  font-weight: 500;
  color: #374151;
  margin-bottom: 16px;
}

.modern-filter-row {
  display: flex;
  gap: 16px;
  align-items: center;
}

.search-group {
  display: flex;
  align-items: center;
  width: 280px;
}

.search-input {
  width: 100%;
  height: 36px;
  padding: 8px 12px;
  border: 1px solid #d1d5db;
  border-radius: 4px 0 0 4px;
  font-size: 14px;
  color: #374151;
}

.search-input:focus {
  outline: none;
  border-color: #3b82f6;
  box-shadow: 0 0 0 1px #3b82f6;
}

.search-btn {
  height: 36px;
  width: 36px;
  padding: 0;
  border: 1px solid #d1d5db;
  border-left: none;
  border-radius: 0 4px 4px 0;
  background: #fff;
  color: #6b7280;
  font-size: 14px;
  cursor: pointer;
  transition: all 0.2s;
}

.search-btn:hover {
  background: #f3f4f6;
  color: #374151;
}

.select-item {
  min-width: 150px;
  flex: 0 1 auto;
}

/* v-select styling */
.modern-select {
  width: auto;
  min-width: 150px;
}

.modern-select .vs__dropdown-toggle {
  height: 36px;
  padding: 0 8px;
  border: 1px solid #d1d5db;
  border-radius: 4px;
  background: white;
  transition: all 0.2s;
  white-space: nowrap;
}

.modern-select .vs__selected-options {
  flex-wrap: nowrap;
  overflow: hidden;
  padding: 0;
}

.modern-select .vs__selected {
  margin: 0;
  padding: 0;
  font-size: 14px;
  color: #374151;
  white-space: nowrap;
}

.modern-select .vs__search {
  margin: 0;
  padding: 0;
  min-width: 50px;
}

.modern-select .vs__actions {
  padding: 0 0 0 4px;
}

/* 📋 Bảng dữ liệu */
.box {
  background: #fff;
  border-radius: 8px;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
  overflow: hidden;
}

.table-container {
  overflow-x: auto;
  padding: 0 1px;
  position: relative;
}

.table-fade-enter-active,
.table-fade-leave-active {
  transition: opacity 0.3s ease;
}

.table-fade-enter-from,
.table-fade-leave-to {
  opacity: 0;
}

.table {
  width: 100%;
  border-collapse: separate;
  border-spacing: 0;
}

.table th,
.table td {
  padding: 12px 16px;
  border-bottom: 1px solid #e5e7eb;
  text-align: left;
  font-size: 14px;
}

.table th {
  background: #f9fafb;
  font-weight: 500;
  color: #374151;
  white-space: nowrap;
}

.table td {
  color: #4b5563;
}

.table tbody tr:hover {
  background: #f9fafb;
}

.small-text {
  font-size: 12px;
  color: #6b7280;
  margin-top: 4px;
}

.box-footer {
  display: flex;
  gap: 12px;
  padding: 16px;
  justify-content: flex-end;
  background: #f9fafb;
  border-top: 1px solid #e5e7eb;
}

.btn {
  padding: 8px 16px;
  border: none;
  border-radius: 4px;
  font-size: 14px;
  font-weight: 500;
  cursor: pointer;
  transition: all 0.2s;
}

.add {
  background: #3b82f6;
  color: white;
}

.add:hover {
  background: #2563eb;
}

.delete {
  background: #ef4444;
  color: white;
}

.delete:hover {
  background: #dc2626;
}

.delete:disabled {
  background: #f3f4f6;
  color: #9ca3af;
  cursor: not-allowed;
}

.cancel {
  background: #6b7280;
  color: white;
}

.cancel:hover {
  background: #4b5563;
}

/* Responsive adjustments */
@media (max-width: 1200px) {
  .modern-filter-row {
    flex-wrap: wrap;
    gap: 12px;
  }

  .search-group {
    width: 100%;
    max-width: 100%;
  }

  .select-item {
    flex: 1 1 auto;
    min-width: 150px;
  }
}

@media (max-width: 768px) {
  .modern-filter-row {
    flex-direction: column;
    gap: 12px;
  }

  .search-group,
  .select-item {
    width: 100%;
  }

  .modern-select {
    width: 100%;
  }
}

/* Pagination Styling */
.pagination {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 16px;
  border-top: 1px solid #e5e7eb;
  background: #fff;
}

.pagination-info {
  color: #6b7280;
  font-size: 14px;
}

.pagination-controls {
  display: flex;
  align-items: center;
  gap: 8px;
}

.pagination-pages {
  display: flex;
  align-items: center;
  gap: 4px;
}

.pagination-btn {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  min-width: 32px;
  height: 32px;
  padding: 0 8px;
  border: 1px solid #d1d5db;
  border-radius: 4px;
  background: #fff;
  color: #374151;
  font-size: 14px;
  font-weight: 500;
  cursor: pointer;
  transition: all 0.2s;
}

.pagination-btn:hover:not(:disabled) {
  border-color: #3b82f6;
  color: #3b82f6;
  background: #f0f9ff;
}

.pagination-btn.active {
  background: #3b82f6;
  border-color: #3b82f6;
  color: #fff;
}

.pagination-btn:disabled {
  background: #f3f4f6;
  border-color: #e5e7eb;
  color: #9ca3af;
  cursor: not-allowed;
}

/* Update table styles for pagination */
.table tbody tr:last-child td {
  border-bottom: none;
}

.pagination-left {
  display: flex;
  align-items: center;
  gap: 16px;
}

.items-per-page {
  display: flex;
  align-items: center;
  gap: 8px;
}

.items-per-page-select {
  height: 32px;
  padding: 0 24px 0 8px;
  border: 1px solid #d1d5db;
  border-radius: 4px;
  background: #fff url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' fill='none' viewBox='0 0 20 20'%3e%3cpath stroke='%236b7280' stroke-linecap='round' stroke-linejoin='round' stroke-width='1.5' d='M6 8l4 4 4-4'/%3e%3c/svg%3e") no-repeat right 4px center/16px 16px;
  color: #374151;
  font-size: 14px;
  cursor: pointer;
  transition: all 0.2s;
  appearance: none;
  min-width: 60px;
  width: auto;
}

.items-per-page-label {
  color: #6b7280;
  font-size: 14px;
}
</style>
  