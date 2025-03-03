<template>
  <div>
    <div class="container content-space-1">
  <form>
    <div class="row gx-2">
      <div class="col-lg mb-2 mb-lg-0">
        <!-- Form -->
        <label for="searchPropertyFilterForm" class="visually-hidden form-label">Search property</label>
        <div class="input-group input-group-merge">
          <span class="input-group-prepend input-group-text">
            <i class="bi-search"></i>
          </span>
          <input type="text" class="form-control form-control-sm" id="searchPropertyFilterForm" placeholder="Search property" aria-label="Search property" value="Nhập từ khoá">
        </div>
        <!-- End Form -->
      </div>
      <!-- End Col -->

      <div class="col-auto mb-2 mb-lg-0">
        <div class="dropdown">
          <a class="btn btn-white btn-sm dropdown-toggle" href="#" id="propertyTypeFilterFormDropdown" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">Ngành nghề</a>

          <div class="dropdown-menu dropdown-menu-end dropdown-card" aria-labelledby="propertyTypeFilterFormDropdown" style="min-width: 20rem;">
            <!-- Card -->
            <div class="card card-sm">

              <div class="card-footer border-top">
                <div class="d-flex justify-content-end gap-2">
                  <a class="btn btn-white btn-sm" href="#">Clear</a>
                  <a class="btn btn-primary btn-sm" href="#">Save</a>
                </div>
              </div>
            </div>
            <!-- End Card -->
          </div>
        </div>

      </div>

      <div class="col-auto mb-2 mb-lg-0">
        <!-- Dropdown -->
        <div class="dropdown">
          <a class="btn btn-white btn-sm dropdown-toggle" href="#" id="propertyTypeFilterFormDropdown" role="button" data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">Ngành nghề</a>

          <div class="dropdown-menu dropdown-menu-end dropdown-card" aria-labelledby="propertyTypeFilterFormDropdown" style="min-width: 20rem;">
            <!-- Card -->
            <div class="card card-sm">
              <div class="card-body">
                <div class="d-grid gap-2">
                  <!-- Check -->
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="propertyTypeHouseCheckbox" checked>
                    <label class="form-check-label" for="propertyTypeHouseCheckbox">
                      House
                      <span class="d-block small text-muted">Find a cozy place</span>
                    </label>
                  </div>
                  <!-- End Check -->

                  <!-- Check -->
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="propertyTypeFlatsCheckbox">
                    <label class="form-check-label" for="propertyTypeFlatsCheckbox">
                      Flats
                      <span class="d-block small text-muted">Flats for sale or to rent</span>
                    </label>
                  </div>
                  <!-- End Check -->

                  <!-- Check -->
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="propertyTypeMultiFamilyCheckbox" checked>
                    <label class="form-check-label" for="propertyTypeMultiFamilyCheckbox">
                      Multi-family
                      <span class="d-block small text-muted">Multi-family houses or flats</span>
                    </label>
                  </div>
                  <!-- End Check -->

                  <!-- Check -->
                  <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="propertyTypeFarmsLandCheckbox">
                    <label class="form-check-label" for="propertyTypeFarmsLandCheckbox">
                      Farms/land
                      <span class="d-block small text-muted">Own a property for farming</span>
                    </label>
                  </div>
                  <!-- End Check -->
                </div>
              </div>

              <div class="card-footer border-top">
                <div class="d-flex justify-content-end gap-2">
                  <a class="btn btn-white btn-sm" href="#">Clear</a>
                  <a class="btn btn-primary btn-sm" href="#">Save</a>
                </div>
              </div>
            </div>
            <!-- End Card -->
          </div>
        </div>
        <!-- End Dropdown -->
      </div>
      <!-- End Col -->

      <div class="col-auto mb-2 mb-lg-0">
        <a class="btn btn-white btn-sm" href="#" data-bs-toggle="modal" data-bs-target="#realEstateMoreFiltersModal">
          <i class="bi-sliders me-2"></i> Thêm bộ lọc
        </a>
      </div>
      <!-- End Col -->

      <div class="col-auto mb-2 mb-lg-0">
        <a class="btn btn-primary btn-sm" href="#">
          <i class="bi-search me-2"></i> Tìm kiếm
        </a>
      </div>
      <!-- End Col -->

    </div>
    <!-- End Row -->
  </form>
</div>
<!-- End Filter Form -->

<!-- ========== SECONDARY CONTENTS ========== -->
<!-- Real Estate More Filters Modal -->
<div class="modal fade" id="realEstateMoreFiltersModal" tabindex="-1" aria-labelledby="realEstateMoreFiltersModalLabel" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <!-- Header -->
      <div class="modal-header">
        <h3 class="modal-title" id="realEstateMoreFiltersModalLabel">Tìm thêm theo tiêu chí</h3>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <!-- End Header -->

      <!-- Body -->
      <div class="modal-body">
        <div class="row gx-3">
          <div class="col-6">
            <div class="mb-4">
              <label for="bedsLabelMoreFilters" class="form-label">Vị trí</label>

              <!-- Select -->
              <select id="bedsLabelMoreFilters" class="js-select form-select"
                      data-hs-tom-select-options='{
                        "hideSearch": true
                      }'>
                <option value="bedValueAny" selected>Any</option>
                <option value="bedValueMin1">1</option>
                <option value="bedValueMin2">2</option>
                <option value="bedValueMin3">3</option>
                <option value="bedValueMin4">4</option>
                <option value="bedValueMin5">5</option>
              </select>
              <!-- End Select -->
            </div>
          </div>
          <!-- End Col -->

          <div class="col-6">
            <div class="mb-4">
              <label for="bathLabelMoreFilters" class="form-label">Mức lương</label>

              <!-- Select -->
              <select id="bathLabelMoreFilters" class="js-select form-select"
                      data-hs-tom-select-options='{
                        "hideSearch": true
                      }'>
                <option value="bedValueAny" selected>Any</option>
                <option value="bedValueMax1">1</option>
                <option value="bedValueMax2">2</option>
                <option value="bedValueMax3">3</option>
                <option value="bedValueMax4">4</option>
                <option value="bedValueMax5">5</option>
              </select>
              <!-- End Select -->
            </div>
          </div>
          <!-- End Col -->
        </div>
        <!-- End Row -->

        <div class="row gx-3">
          <div class="col-6">
            <div class="mb-4">
              <label for="bedsLabelMoreFilters" class="form-label">Trình độ</label>

              <!-- Select -->
              <select id="bedsLabelMoreFilters" class="js-select form-select"
                      data-hs-tom-select-options='{
                        "hideSearch": true
                      }'>
                <option value="bedValueAny" selected>Any</option>
                <option value="bedValueMin1">1</option>
                <option value="bedValueMin2">2</option>
                <option value="bedValueMin3">3</option>
                <option value="bedValueMin4">4</option>
                <option value="bedValueMin5">5</option>
              </select>
              <!-- End Select -->
            </div>
          </div>
          <!-- End Col -->

          <div class="col-6">
            <div class="mb-4">
              <label for="bathLabelMoreFilters" class="form-label">Kinh nghiệm</label>

              <!-- Select -->
              <select id="bathLabelMoreFilters" class="js-select form-select"
                      data-hs-tom-select-options='{
                        "hideSearch": true
                      }'>
                <option value="bedValueAny" selected>Any</option>
                <option value="bedValueMax1">1</option>
                <option value="bedValueMax2">2</option>
                <option value="bedValueMax3">3</option>
                <option value="bedValueMax4">4</option>
                <option value="bedValueMax5">5</option>
              </select>
              <!-- End Select -->
            </div>
          </div>
          <!-- End Col -->
        </div>
        <!-- End Row -->




      </div>
      <!-- End Body -->

      <div class="card-footer border-top">
        <div class="d-flex justify-content-end gap-3">
          <a class="btn btn-white" href="#">Clear</a>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- ========== END SECONDARY CONTENTS ========== -->
  </div>
</template>

<script>
import vSelect from "vue-select";
import "vue-select/dist/vue-select.css";


export default {
  components: { vSelect },
  data() {
    return {
      selectedLocation: "",
      locationOptions: ["Tất cả tỉnh thành", "Hà Nội", "Hồ Chí Minh", "Đà Nẵng"],
    };
  },
  methods: {
    searchCandidates() {
      alert(`Tìm kiếm: ${this.searchText}`);
    },
  },
};
</script>

<style >
.card-footer {
  padding: 2rem;
  padding-top: 1rem;
  padding-bottom: 1rem;
}
</style>
