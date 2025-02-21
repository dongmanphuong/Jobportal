<template>
  <div class="navbar-expand-lg mb-5">
    <!-- Navbar Toggle -->
    <div class="d-grid">
      <button type="button" class="navbar-toggler btn btn-white mb-3" data-bs-toggle="collapse"
        data-bs-target="#navbarVerticalNavMenu" aria-label="Toggle navigation" aria-expanded="false"
        aria-controls="navbarVerticalNavMenu">
        <span class="d-flex justify-content-between align-items-center">
          <span class="text-dark">Filter</span>

          <span class="navbar-toggler-default">
            <i class="bi-list"></i>
          </span>

          <span class="navbar-toggler-toggled">
            <i class="bi-x"></i>
          </span>
        </span>
      </button>
    </div>
    <!-- End Navbar Toggle -->

    <!-- Navbar Collapse -->
    <div id="navbarVerticalNavMenu" class="collapse navbar-collapse">
      <div class="w-100">
        <!-- Form -->
        <form>
          <div class="mb-5">
            <h5 class="mb-3">Distance</h5>

            <p class="form-text">Within <span id="rangeSliderDistance"></span> miles of <span
                class="fw-semibold text-dark">London</span></p>

            <!-- Range Slider -->
            <div class="range-slider">
              <div class="js-nouislider" data-hs-nouislider-options='{
                               "range": {
                                 "min": 0,
                                 "max": 100
                               },
                               "connect": [true, false],
                               "start": 25,
                               "result_min_target_el": "#rangeSliderDistance"
                             }'>
              </div>
            </div>
            <div class="d-flex justify-content-between align-items-center mt-5">
              <span class="text-body">5 miles</span>
              <span class="text-body">100 miles</span>
            </div>
            <!-- End Range Slider -->
          </div>

          <div class="mb-5">
            <h5 class="mb-3">Last updated</h5>

            <!-- Select -->
            <select class="form-select form-select-sm">
              <option value="within last day">within last day</option>
              <option value="within last week">within last week</option>
              <option value="within last month">within last month</option>
              <option value="within last 3 months">within last 3 months</option>
              <option value="within last 6 months" selected>within last 6 months</option>
              <option value="show all resumes">show all resumes</option>
            </select>
            <!-- End Select -->
          </div>

          <div class="mb-5">
            <h5 class="mb-3">Job titles</h5>

            <div class="d-grid gap-2">
              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobTitleCheckbox1">
                <label class="form-check-label d-flex" for="jobTitleCheckbox1">Graphic Designer <span
                    class="ms-auto">2</span></label>
              </div>
              <!-- End Checkboxes -->

              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobTitleCheckbox2" checked>
                <label class="form-check-label d-flex" for="jobTitleCheckbox2">UI/UX Designer <span
                    class="ms-auto">2</span></label>
              </div>
              <!-- End Checkboxes -->

              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobTitleCheckbox3" checked>
                <label class="form-check-label d-flex" for="jobTitleCheckbox3">Full Stack Developer <span
                    class="ms-auto">1</span></label>
              </div>
              <!-- End Checkboxes -->

              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobTitleCheckbox4">
                <label class="form-check-label d-flex" for="jobTitleCheckbox4">Information Associate <span
                    class="ms-auto">1</span></label>
              </div>
              <!-- End Checkboxes -->
            </div>
          </div>

          <div class="mb-5">
            <h5 class="mb-3">Company</h5>

            <div class="d-grid gap-2">
              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobCompanyCheckbox1">
                <label class="form-check-label d-flex" for="jobCompanyCheckbox1">Capsule <span
                    class="ms-auto">2</span></label>
              </div>
              <!-- End Checkboxes -->

              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobCompanyCheckbox2">
                <label class="form-check-label d-flex" for="jobCompanyCheckbox2">Dropbox <span
                    class="ms-auto">18</span></label>
              </div>
              <!-- End Checkboxes -->

              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobCompanyCheckbox3">
                <label class="form-check-label d-flex" for="jobCompanyCheckbox3">Mailchimp <span
                    class="ms-auto">1</span></label>
              </div>
              <!-- End Checkboxes -->

              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobCompanyCheckbox4">
                <label class="form-check-label d-flex" for="jobCompanyCheckbox4">Google <span
                    class="ms-auto">1</span></label>
              </div>
              <!-- End Checkboxes -->

              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobCompanyCheckbox5">
                <label class="form-check-label d-flex" for="jobCompanyCheckbox5">Prosperops <span
                    class="ms-auto">2</span></label>
              </div>
              <!-- End Checkboxes -->

              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobCompanyCheckbox6">
                <label class="form-check-label d-flex" for="jobCompanyCheckbox6">Figam <span
                    class="ms-auto">6</span></label>
              </div>
              <!-- End Checkboxes -->
            </div>
          </div>

          <div class="mb-5">
            <h5 class="mb-3">Years of experience</h5>

            <div class="d-grid gap-2">
              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobYearExperienceCheckbox1" checked>
                <label class="form-check-label d-flex" for="jobYearExperienceCheckbox1">6-10 years <span
                    class="ms-auto">73</span></label>
              </div>
              <!-- End Checkboxes -->

              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobYearExperienceCheckbox2">
                <label class="form-check-label d-flex" for="jobYearExperienceCheckbox2">3-5 years <span
                    class="ms-auto">3</span></label>
              </div>
              <!-- End Checkboxes -->

              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobYearExperienceCheckbox3">
                <label class="form-check-label d-flex" for="jobYearExperienceCheckbox3">More than 10 years <span
                    class="ms-auto">1</span></label>
              </div>
              <!-- End Checkboxes -->
            </div>
          </div>

          <div class="mb-5">
            <h5 class="mb-3">Education</h5>

            <div class="d-grid gap-2">
              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobEducationCheckbox1">
                <label class="form-check-label d-flex" for="jobEducationCheckbox1">Bachelors <span
                    class="ms-auto">6</span></label>
              </div>
              <!-- End Checkboxes -->

              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobEducationCheckbox2">
                <label class="form-check-label d-flex" for="jobEducationCheckbox2">Masters <span
                    class="ms-auto">1</span></label>
              </div>
              <!-- End Checkboxes -->

              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobEducationCheckbox3">
                <label class="form-check-label d-flex" for="jobEducationCheckbox3">Associates <span
                    class="ms-auto">1</span></label>
              </div>
              <!-- End Checkboxes -->
            </div>
          </div>

          <div class="mb-5">
            <h5 class="mb-3">Assessment <i class="bi-question-circle text-body ml-1" data-bs-toggle="tooltip"
                data-bs-placement="top"
                title="Assessments shown her6 are summarized for convenience only. View the candidate’s profile for more information, including score ranges for each assessment. Indeed makes no statement as to the skill level of any candidate."></i>
            </h5>

            <div class="d-grid gap-2">
              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobAssessmentCheckbox1">
                <label class="form-check-label d-flex" for="jobAssessmentCheckbox1">Attention to detail <span
                    class="ms-auto">3</span></label>
              </div>
              <!-- End Checkboxes -->

              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobAssessmentCheckbox2">
                <label class="form-check-label d-flex" for="jobAssessmentCheckbox2">Graphic design <span
                    class="ms-auto">7</span></label>
              </div>
              <!-- End Checkboxes -->

              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobAssessmentCheckbox3">
                <label class="form-check-label d-flex" for="jobAssessmentCheckbox3">Social Media <span
                    class="ms-auto">1</span></label>
              </div>
              <!-- End Checkboxes -->

              <!-- Checkboxes -->
              <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="jobAssessmentCheckbox4">
                <label class="form-check-label d-flex" for="jobAssessmentCheckbox4">Marketing <span
                    class="ms-auto">1</span></label>
              </div>
              <!-- End Checkboxes -->
            </div>
          </div>

          <div class="d-grid">
            <button type="button" class="btn btn-white btn-transition">Clear all</button>
          </div>
        </form>
        <!-- End Form -->
      </div>
    </div>
    <!-- End Navbar Collapse -->
  </div>
</template>
