<template>
    <div class="container">
        <h2 class="title">Thông tin tuyển dụng việc làm</h2>

        <section class="section">
            <h3 class="section-title">1. Thông tin tuyển dụng</h3>

            <!-- Row cho Tên công việc và Số lượng -->
            <div class="form-row">
                <div class="col-2-3">
                    <label class="label small-label">Tên công việc *</label>
                    <input v-model="jobName" type="text" class="input" :class="{ 'input-error': errors.jobName }"
                        placeholder="Nhập tên công việc..." required />
                    <span v-if="errors.jobName" class="error-message">{{ errors.jobName }}</span>
                </div>
                <div class="col-1-3">
                    <label class="label small-label">Số lượng *</label>
                    <input v-model="soluong" type="text" class="input" :class="{ 'input-error': errors.soluong }"
                        placeholder="Nhập số lượng..." required />
                    <span v-if="errors.soluong" class="error-message">{{ errors.soluong }}</span>
                </div>
            </div>

            <!-- Row chứa 2 cột: bên trái mô tả công việc, bên phải thông tin nghề nghiệp -->
            <div class="form-row">
                <!-- Cột trái: Mô tả công việc -->
                <div class="col-1-2">
                    <label class="label small-label">Mô tả công việc *</label>
                    <textarea v-model="mota" class="input textarea" :class="{ 'input-error': errors.mota }" rows="8"
                        placeholder="Nhập mô tả công việc..."></textarea>
                    <span v-if="errors.mota" class="error-message">{{ errors.mota }}</span>
                </div>
                <!-- Cột phải: Thông tin nghề nghiệp -->
                <div class="col-1-2">
                    <div class="job-info">
                        <!-- Dòng 1: Mã nghề -->
                        <div class="job-info-row">
                            <label class="label small-label">Mã nghề *</label>
                            <v-select v-model="job_code" :options="jobCodeOptions" label="label"
                                placeholder="Chọn loại hình..." :class="{ 'vs-error': errors.companyType }"
                                :reduce="option => option.value" :clearable="true" @input="val => job_code = val"></v-select>
                            <span v-if="errors.companyType" class="error-message">{{ errors.companyType }}</span>
                        </div>
                        <!-- Dòng 2: Cấp 1 và Cấp 2 -->
                        <div class="job-info-row form-row">
                            <div class="col-1-2">
                                <label class="label small-label">Cấp 1</label>
                                <input v-model="cap1" type="text" class="input" readonly
                                    placeholder="Thông tin cấp 1..." />
                            </div>
                            <div class="col-1-2">
                                <label class="label small-label">Cấp 2</label>
                                <input v-model="cap2" type="text" class="input" readonly
                                    placeholder="Thông tin cấp 2..." />
                            </div>
                        </div>
                        <!-- Dòng 3: Cấp 3 và Cấp 4 -->
                        <div class="job-info-row form-row">
                            <div class="col-1-2">
                                <label class="label small-label">Cấp 3</label>
                                <input v-model="cap3" type="text" class="input" readonly
                                    placeholder="Thông tin cấp 3..." />
                            </div>
                            <div class="col-1-2">
                                <label class="label small-label">Cấp 4</label>
                                <input v-model="cap4" type="text" class="input" readonly
                                    placeholder="Thông tin cấp 4..." />
                            </div>
                        </div>
                        <!-- Dòng 4: Chức vụ -->
                        <div class="job-info-row">
                            <label class="label small-label">Chức vụ *</label>
                            <v-select v-model="chucvu" :options="chucvuOptions" placeholder="Nhập chức vụ..."
                                :reduce="option => option.value" :class="{ 'vs-error': errors.chucvu }"
                                :clearable="true" @input="val => chucvu = val"></v-select>
                            <span v-if="errors.chucvu" class="error-message">{{ errors.chucvu }}</span>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Mục Trình độ học vấn và trình độ CMKT trên cùng 1 dòng -->
            <div class="form-row">
                <div class="col-1-2">
                    <label class="label small-label">Trình độ học vấn *</label>
                    <v-select v-model="educationlevel" :options="educationlevelOptions" label="label"
                        placeholder="Chọn trình độ học vấn..." :class="{ 'vs-error': errors.province }"
                        :clearable="true" :reduce="option => option.value" @input="val => educationlevel = val"></v-select>
                    <span v-if="errors.province" class="error-message">{{ errors.province }}</span>
                </div>
                <div class="col-1-2">
                    <label class="label small-label">Trình độ CMKT *</label>
                    <v-select v-model="cmkt" :options="cmktOptions" label="label"
                        placeholder="Chọn trình độ CMKT..." :class="{ 'vs-error': errors.cmkt }"
                        :clearable="true" :reduce="option => option.value" @input="val => cmkt = val"></v-select>
                    <span v-if="errors.cmkt" class="error-message">{{ errors.cmkt }}</span>
                </div>
            </div>

            <label class="label small-label">Chuyên ngành đào tạo</label>
            <textarea v-model="chuyennghanhdaotao" class="input textarea" rows="1"
                placeholder="Nhập mô tả chuyên ngành đào tạo..."></textarea>

            <!-- Phần Trình độ khác -->
            <h3 class="section-title">Trình độ khác</h3>
            <div class="form-row">
                <div class="col-1-2">
                    <label class="label small-label">Trình độ khác 1.</label>
                    <input v-model="trinhdokhac1" class="input" placeholder="Nhập trình độ khác 1..." />
                </div>
                <div class="col-1-2">
                    <label class="label small-label">Trình độ khác 2.</label>
                    <input v-model="trinhdokhac2" class="input" placeholder="Nhập trình độ khác 2..." />
                </div>
            </div>

            <!-- Phần Trình độ kỹ năng nghề -->
            <div class="form-row">
                <div class="col-1-2">
                    <label class="label small-label">Trình độ kỹ năng nghề</label>
                    <v-select v-model="kynangnghe" :options="kynangngheOptions" label="label"
                        placeholder="Chọn trình độ kỹ năng nghề..." :clearable="true"></v-select>
                </div>
                <div class="col-1-2">
                    <label class="label small-label">Kỹ năng nghề bậc</label>
                    <input v-model="kynangbac" class="input" placeholder="Nhập kỹ năng nghề bậc..." />
                </div>
            </div>


            <h3 class="section-title">Trình độ ngoại ngữ</h3>
            <!-- Ngoại ngữ 1 row -->
            <div class="form-row">
                <div class="col-1-3">
                    <label class="label small-label">Ngoại ngữ 1</label>
                    <input v-model="ngoaingu1" class="input" placeholder="Nhập ngoại ngữ 1..." />
                </div>
                <div class="col-1-3">
                    <label class="label small-label">Chứng chỉ</label>
                    <input v-model="chungchi1" class="input" placeholder="Nhập chứng chỉ..." />
                </div>
                <div class="col-1-3">
                    <label class="label small-label">Khả năng sử dụng</label>
                    <v-select v-model="khanang1" :options="khanang1Options" label="label"
                        placeholder="Chọn khả năng sử dụng..." :clearable="true"></v-select>
                </div>
            </div>

            <!-- Ngoại ngữ 2 row -->
            <div class="form-row">
                <div class="col-1-3">
                    <label class="label small-label">Ngoại ngữ 2</label>
                    <input v-model="ngoaingu2" class="input" placeholder="Nhập ngoại ngữ 2..." />
                </div>
                <div class="col-1-3">
                    <label class="label small-label">Chứng chỉ</label>
                    <input v-model="chungchi2" class="input" placeholder="Nhập chứng chỉ..." />
                </div>
                <div class="col-1-3">
                    <label class="label small-label">Khả năng sử dụng</label>
                    <v-select v-model="khanang2" :options="khanang2Options" label="label"
                        placeholder="Chọn khả năng sử dụng..." :clearable="true"></v-select>
                </div>
            </div>

            <h3 class="section-title">Trình độ tin học</h3>
            <!-- Tin học văn phòng và khả năng sử dụng -->
            <div class="form-row">
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Tin học văn phòng</label>
                        <input v-model="tinhoc" class="input" placeholder="Nhập tên tin học văn phòng..." />
                    </div>
                </div>
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Khả năng sử dụng</label>
                        <v-select v-model="tinhocKS" :options="tinhocKSOptions" label="label"
                            placeholder="Chọn khả năng sử dụng..." :clearable="true"></v-select>
                    </div>
                </div>
            </div>

            <!-- Trình độ khác và khả năng sử dụng -->
            <div class="form-row">
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Trình độ khác</label>
                        <input v-model="tinhocKhac" class="input" placeholder="Nhập trình độ khác..." />
                    </div>
                </div>
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Khả năng sử dụng</label>
                        <v-select v-model="tinhocKS2" :options="tinhocKS2Options" label="label"
                            placeholder="Chọn khả năng sử dụng..." :clearable="true"></v-select>
                    </div>
                </div>
            </div>

            <h3 class="section-title">Kỹ năng mềm</h3>
            <div class="form-row">
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Kỹ năng mềm</label>
                        <v-select v-model="kynangmem" :options="kynangmemOptions" label="label"
                            placeholder="Chọn kỹ năng mềm..." :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Yêu cầu kinh nghiệm</label>
                        <v-select v-model="kinhnghiem" :options="kinhnghiemOptions" label="label"
                            placeholder="Chọn kinh nghiệm..." :clearable="true"></v-select>
                    </div>
                </div>
            </div>

            <h3 class="section-title">Nơi làm việc dự kiến</h3>
            <div class="form-row">
                <div class="col-1-3">
                    <div class="form-group">
                        <label class="label small-label">Nơi làm việc *</label>
                        <v-select v-model="diadiem" :options="provinceOptions" label="label"
                            placeholder="Chọn nơi làm việc..." :class="{ 'vs-error': errors.diadiem }"
                            :clearable="true" :reduce="option => option.value" @clear="handleProvinceClear"></v-select>
                        <span v-if="errors.diadiem" class="error-message">{{ errors.diadiem }}</span>
                    </div>
                </div>
                <div class="col-1-3">
                    <div class="form-group">
                        <label class="label small-label">Quận/Huyện</label>
                        <v-select v-model="district" :options="districtOptions" label="label"
                            placeholder="Chọn quận/huyện..." :clearable="true" :reduce="option => option.value" @clear="handleDistrictClear"></v-select>
                    </div>
                </div>
                <div class="col-1-3">
                    <div class="form-group">
                        <label class="label small-label">Phường/Xã</label>
                        <v-select v-model="ward" :options="wardOptions" label="label" placeholder="Chọn phường/xã..."
                            :clearable="true" :reduce="option => option.value" @clear="handleWardClear"></v-select>
                    </div>
                </div>
            </div>

            <h3 class="section-title">Loại hợp đồng lao động</h3>
            <v-select v-model="contractType" :options="contractTypedOptions" label="label"
                placeholder="Chọn loại hợp đồng..." :clearable="true"></v-select>

            <h3 class="section-title">Yêu cầu thêm</h3>
            <div class="form-row checkbox-row">
                <div class="col-1-3">
                    <div class="checkbox-group">
                        <label class="label small-label">
                            <input type="checkbox" v-model="lamca" />
                            Làm ca
                        </label>
                    </div>
                </div>
                <div class="col-1-3">
                    <div class="checkbox-group">
                        <label class="label small-label">
                            <input type="checkbox" v-model="dicongtac" />
                            Đi công tác
                        </label>
                    </div>
                </div>
                <div class="col-1-3">
                    <div class="checkbox-group">
                        <label class="label small-label">
                            <input type="checkbox" v-model="bietphai" />
                            Đi biệt phái
                        </label>
                    </div>
                </div>
            </div>
            <div class="form-row">
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Hình thức làm việc *</label>
                        <v-select v-model="hinhthuclamviec" :options="hinhthuclamviecOptions" label="label"
                            placeholder="Chọn hình thức làm việc..." :class="{ 'vs-error': errors.hinhthuclamviec }"
                            :clearable="true" @input="val => hinhthuclamviec = val"></v-select>
                        <span v-if="errors.hinhthuclamviec" class="error-message">{{ errors.hinhthuclamviec }}</span>
                    </div>
                </div>
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Mục đích làm việc *</label>
                        <v-select v-model="mucdichlamviec" :options="mucdichlamviecOptions" label="label"
                            placeholder="Chọn mục đích làm việc..." :class="{ 'vs-error': errors.mucdichlamviec }"
                            :clearable="true" @input="val => mucdichlamviec = val"></v-select>
                        <span v-if="errors.mucdichlamviec" class="error-message">{{ errors.mucdichlamviec }}</span>
                    </div>
                </div>
            </div>

            <h3 class="section-title">Mức lương</h3>
            <div class="form-row">
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Chọn kiểu lương *</label>
                        <v-select v-model="kieuluong" :options="kieuluongOptions" label="label"
                            placeholder="Chọn kiểu lương..." :class="{ 'vs-error': errors.kieuluong }"
                            :clearable="true" @input="val => kieuluong = val"></v-select>
                        <span v-if="errors.kieuluong" class="error-message">{{ errors.kieuluong }}</span>
                    </div>
                </div>
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Mức lương *</label>
                        <v-select v-model="mucluong" :options="mucluongOptions" label="label"
                            placeholder="Chọn mức lương..." :class="{ 'vs-error': errors.mucluong }"
                            :clearable="true" @input="val => mucluong = val"></v-select>
                        <span v-if="errors.mucluong" class="error-message">{{ errors.mucluong }}</span>
                    </div>
                </div>
            </div>

            <div class="form-row checkbox-row">
                <div class="checkbox-group">
                    <label class="label small-label">
                        <input type="checkbox" v-model="dicongtac" />
                        Thỏa thuận khi phỏng vấn
                    </label>
                </div>
                <div class="checkbox-group">
                    <label class="label small-label">
                        <input type="checkbox" v-model="bietphai" />
                        Hoa hồng theo doanh thu/sản phẩm
                    </label>
                </div>
            </div>

            <h3 class="section-title">Chế độ phúc lợi</h3>
            <div class="form-row">
                <div class="col-1-4">
                    <div class="form-group">
                        <label class="label small-label">Hỗ trợ ăn</label>
                        <v-select v-model="hotroan" :options="hotroanOptions" label="label"
                            placeholder="Chọn hỗ trợ ăn..." :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-4">
                    <div class="form-group">
                        <label class="label small-label">Phúc lợi</label>
                        <v-select v-model="hotroan" :options="hotroanOptions" label="label"
                            placeholder="Chọn phúc lợi..." :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-4">
                    <div class="form-group">
                        <label class="label small-label">Xe đưa đón</label>
                        <v-select v-model="xeduadon" :options="xeduadonOptions" label="label"
                            placeholder="Chọn xe đưa đón..." :clearable="true" :reduce="option => option.value"></v-select>
                    </div>
                </div>
                <div class="col-1-4">
                    <div class="form-group">
                        <label class="label small-label">Hỗ trợ</label>
                        <v-select v-model="hotro" :options="hotroOptions" label="label" placeholder="Chọn hỗ trợ..."
                            :clearable="true" :reduce="option => option.value"></v-select>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <label class="label small-label">Khác</label>
                <input v-model="khac" class="input" placeholder="Nhập thông tin khác..." />
            </div>

            <h3 class="section-title">Điều kiện làm việc</h3>
            <div class="form-row">
                <div class="col-1-4">
                    <div class="form-group">
                        <label class="label small-label">Nơi làm việc</label>
                        <v-select v-model="noilamviec" :options="noilamviecOptions" label="label"
                            placeholder="Chọn nơi làm việc..." :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-4">
                    <div class="form-group">
                        <label class="label small-label">Trọng lượng nâng</label>
                        <v-select v-model="trongluong" :options="trongluongOptions" label="label"
                            placeholder="Chọn trọng lượng nâng..." :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-4">
                    <div class="form-group">
                        <label class="label small-label">Đứng hoặc đi lại</label>
                        <v-select v-model="dklamvc" :options="dklamvcOptions" label="label" placeholder="Chọn..."
                            :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-4">
                    <div class="form-group">
                        <label class="label small-label">Nghe nói</label>
                        <v-select v-model="nghenoi" :options="nghenoiOptions" label="label" placeholder="Chọn..."
                            :clearable="true"></v-select>
                    </div>
                </div>
            </div>

            <div class="form-row">
                <div class="col-1-3">
                    <div class="form-group">
                        <label class="label small-label">Thị lực</label>
                        <v-select v-model="thiluc" :options="thilucOptions" label="label" placeholder="Chọn..."
                            :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-3">
                    <div class="form-group">
                        <label class="label small-label">Thao tác bằng tay</label>
                        <v-select v-model="thaotac" :options="thaotacOptions" label="label" placeholder="Chọn..."
                            :clearable="true"></v-select>
                    </div>
                </div>
                <div class="col-1-3">
                    <div class="form-group">
                        <label class="label small-label">Dùng 2 tay</label>
                        <v-select v-model="thaotac2" :options="thaotacOptions" label="label" placeholder="Chọn..."
                            :clearable="true" :reduce="option => option.value"></v-select>
                    </div>
                </div>
            </div>

            <h3 class="section-title">Đối tượng ưu tiên</h3>
            <label class="label small-label">Đối tượng ưu tiên</label>
            <v-select v-model="doituonguutien" :options="thaotacOptions" label="label"
                placeholder="Chọn đối tượng ưu tiên..." :clearable="true" :reduce="option => option.value"></v-select>
            <h3 class="section-title">Hình thức tuyển dụng</h3>
            <div class="form-row">
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Hình thức tuyển dụng</label>
                        <v-select v-model="hinhthuctuyendung" :options="thaotacOptions" label="label"
                            placeholder="Chọn hình thức tuyển dụng..." :clearable="true" :reduce="option => option.value"></v-select>
                    </div>
                </div>
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Thời gian tuyển dụng</label>
                        <Datepicker v-model="thoigiantuyendung" :format="formatDate" :language="vi"
                            placeholder="Chọn thời gian..." input-class="input date-picker" :monday-first="true" :reduce="option => option.value" />
                    </div>
                </div>
            </div>

            <h3 class="section-title">Mong muốn của doanh nghiệp đối với TTDVVL</h3>
            <label class="label small-label">Mong muốn doanh nghiệp</label>
            <v-select v-model="mongmuon" :options="thaotacOptions" label="label" placeholder="Chọn mong muốn..."
                :clearable="true" :reduce="option => option.value"></v-select>

            <h3 class="section-title">2. Thông tin người liên hệ tuyển dụng</h3>
            <div class="form-group mb-15">
                <label class="label small-label">Doanh nghiệp tuyển dụng *</label>
                <input v-model="doanhnghiep" type="text" class="input" :class="{ 'input-error': errors.doanhnghiep }"
                    placeholder="Nhập tên doanh nghiệp tuyển dụng..." />
                <span v-if="errors.doanhnghiep" class="error-message">{{ errors.doanhnghiep }}</span>
            </div>

            <div class="form-row">
                <div class="col-2-3">
                    <div class="form-group">
                        <label class="label small-label">Địa chỉ liên hệ</label>
                        <input v-model="diachi" type="text" class="input" placeholder="Nhập địa chỉ liên hệ..." />
                    </div>
                </div>
                <div class="col-1-3">
                    <div class="form-group">
                        <label class="label small-label">MST *</label>
                        <input v-model="mst" type="text" class="input" :class="{ 'input-error': errors.mst }"
                            placeholder="Nhập MST..." />
                        <span v-if="errors.mst" class="error-message">{{ errors.mst }}</span>
                    </div>
                </div>
            </div>

            <div class="form-row">
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Người liên hệ *</label>
                        <input v-model="nguoiLH" type="text" class="input" :class="{ 'input-error': errors.nguoiLH }"
                            placeholder="Nhập tên người liên hệ..." />
                        <span v-if="errors.nguoiLH" class="error-message">{{ errors.nguoiLH }}</span>
                    </div>
                </div>
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Điện thoại *</label>
                        <input v-model="dienthoai" type="text" class="input"
                            :class="{ 'input-error': errors.dienthoai }" placeholder="Nhập số điện thoại..." />
                        <span v-if="errors.dienthoai" class="error-message">{{ errors.dienthoai }}</span>
                    </div>
                </div>
            </div>

            <div class="form-row">
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Email liên hệ *</label>
                        <input v-model="emailLH" type="text" class="input" :class="{ 'input-error': errors.emailLH }"
                            placeholder="Nhập email liên hệ..." />
                        <span v-if="errors.emailLH" class="error-message">{{ errors.emailLH }}</span>
                    </div>
                </div>
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Hình thức liên hệ khác</label>
                        <input v-model="hinhthucLH" type="text" class="input"
                            placeholder="Nhập hình thức liên hệ khác..."></input>
                    </div>
                </div>
            </div>
            <div class="form-row checkbox-row status-checkboxes">
                <div class="checkbox-group">
                    <label class="label small-label">
                        <input type="checkbox" v-model="hsDuyet" />
                        Hồ sơ đã duyệt
                    </label>
                </div>
                <div class="checkbox-group">
                    <label class="label small-label">
                        <input type="checkbox" v-model="tinNoiBat" />
                        Tin nổi bật
                    </label>
                </div>
                <div class="checkbox-group">
                    <label class="label small-label">
                        <input type="checkbox" v-model="dauThongTin" />
                        Dấu thông tin DN
                    </label>
                </div>
                <div class="checkbox-group">
                    <label class="label small-label">
                        <input type="checkbox" v-model="dangGap" />
                        Đăng gấp
                    </label>
                </div>
                <div class="checkbox-group">
                    <label class="label small-label">
                        <input type="checkbox" v-model="ghimTin" />
                        Ghim tin
                    </label>
                </div>
            </div>

            <h3 class="section-title">Thông tin vị trí trên bản đồ</h3>
            <div class="form-row">
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Lat(Vĩ độ)</label>
                        <input v-model="lat" type="text" class="input" placeholder="Nhập Vĩ độ..." />
                    </div>
                </div>
                <div class="col-1-2">
                    <div class="form-group">
                        <label class="label small-label">Lng(Kinh độ)</label>
                        <input v-model="lng" type="text" class="input" placeholder="Nhập Kinh độ..." />
                    </div>
                </div>
            </div>

            <div class="buttons">
                <button class="btn cancel">Quay lại</button>
                <button class="btn save" @click="submitForm">Lưu lại</button>
            </div>
        </section>
    </div>
</template>

<script>
import vSelect from "vue-select";
import Datepicker from 'vuejs-datepicker';
import { vi } from 'vuejs-datepicker/dist/locale';
import { listProvince, listDistrict, listWard, getEmployer } from "@/api/recruitment/employer";
import { getUserProfile } from "@/api/system/user";


export default {
    components: { vSelect, Datepicker },
    data() {
        return {
            jobName: "",
            soluong: "",
            mota: "",
            companyType: "",
            cap1: "",
            cap2: "",
            cap3: "",
            cap4: "",
            chucvu: null,
            province: "",
            cmkt: null,
            chuyennghanhdaotao: "",
            trinhdokhac1: "",
            trinhdokhac2: "",
            kynangnghe: "",
            kynangbac: "",
            ngoaingu1: "",
            chungchi1: "",
            khanang1: "",
            ngoaingu2: "",
            chungchi2: "",
            khanang2: "",
            tinhoc: "",
            tinhocKS: "",
            tinhocKhac: "",
            tinhocKS2: "",
            kynangmem: "",
            kinhnghiem: "",
            diadiem: null,
            district: null,
            ward: null,
            contractType: "",
            hinhthuclamviec: null,
            mucdichlamviec: null,
            kieuluong: null,
            mucluong: null,
            lamca: false,
            dicongtac: false,
            bietphai: false,
            hotroan: "",
            xeduadon: "",
            hotro: "",
            khac: "",
            noilamviec: "",
            trongluong: "",
            dklamvc: "",
            nghenoi: "",
            thiluc: "",
            thaotac: "",
            thaotac2: "",
            doituonguutien: "",
            hinhthuctuyendung: "",
            thoigiantuyendung: null,
            mongmuon: "",
            doanhnghiep: "",
            diachi: "",
            mst: "",
            nguoiLH: "",
            dienthoai: "",
            emailLH: "",
            hinhthucLH: "",
            lat: "",
            lng: "",
            hsDuyet: false,
            tinNoiBat: false,
            dauThongTin: false,
            dangGap: false,
            ghimTin: false,
            errors: {
                jobName: "",
                soluong: "",
                mota: "",
                companyType: "",
                province: "",
                cmkt: "",
                diadiem: "",
                hinhthuclamviec: "",
                mucdichlamviec: "",
                kieuluong: "",
                mucluong: "",
                doanhnghiep: "",
                mst: "",
                nguoiLH: "",
                dienthoai: "",
                emailLH: ""
            },
            submitted: false,
            companyTypeOptions: [],
            contractTypedOptions: [],
            provinceOptions: [],
            districtOptions: [],
            wardOptions: [],
            hotroanOptions: [],
            chucvuOptions: [],
            hinhthuclamviecOptions: [],
            mucdichlamviecOptions: [],
            kieuluongOptions: [],
            mucluongOptions: [],
            noilamviecOptions: [],
            trongluongOptions: [],
            dklamvcOptions: [],
            nghenoiOptions: [],
            thilucOptions: [],
            thaotacOptions: [],
            xeduadonOptions: [],
            hotroOptions: [],
            vi: vi
        };
    },
    mounted() {
        this.loading = true;
        // Also load province options
        this.fetchProvinceOptions();
    },
    watch: {
        diadiem(newValue) {
            if (newValue) {
                this.fetchDistrictOptions(newValue);
            } else {
                this.handleProvinceClear();
            }
        },
        district(newValue) {
            if (newValue) {
                this.fetchWardOptions(newValue);
            } else {
                this.handleDistrictClear();
            }
        }
    },
    methods: {
        handleProvinceClear() {
            this.diadiem = null;
            this.district = null;
            this.ward = null;
            this.districtOptions = [];
            this.wardOptions = [];
        },

        handleDistrictClear() {
            this.district = null;
            this.ward = null;
            this.wardOptions = [];
        },

        handleWardClear() {
            this.ward = null;
        },

        async fetchDistrictOptions(provinceId) {
            if (!provinceId) {
                this.districtOptions = [];
                this.district = null;
                this.wardOptions = [];
                this.ward = null;
                return;
            }
            try {
                this.loading = true;
                const response = await listDistrict(provinceId);
                console.log("District API response:", response);
                
                if (Array.isArray(response)) {
                    this.districtOptions = response.map(item => ({
                        value: item.value || item.id,
                        label: item.label || item.name
                    }));
                } else {
                    console.error("Invalid district data format:", response);
                    this.errors.api = "Dữ liệu quận/huyện không hợp lệ";
                }
            } catch (error) {
                console.error("Error fetching districts:", error);
                this.errors.api = "Không thể tải danh sách quận/huyện";
            } finally {
                this.loading = false;
            }
        },

        async fetchWardOptions(districtId) {
            if (!districtId) {
                this.wardOptions = [];
                this.ward = null;
                return;
            }
            try {
                this.loading = true;
                const response = await listWard(districtId);
                
                if (Array.isArray(response)) {
                    this.wardOptions = response.map(item => ({
                        value: item.value || item.id,
                        label: item.label || item.name
                    }));
                } else {
                    this.errors.api = "Dữ liệu phường/xã không hợp lệ";
                }
            } catch (error) {
                this.errors.api = "Không thể tải danh sách phường/xã";
            } finally {
                this.loading = false;
            }
        },
        async fetchProvinceOptions() {
            try {
                this.loading = true;
                const response = await listProvince();                
                if (Array.isArray(response)) {
                    this.provinceOptions = response.map(item => ({
                        value: item.value || item.id,
                        label: item.label || item.name
                    }));
                } else {
                    this.errors.api = "Dữ liệu tỉnh/thành phố không hợp lệ";
                }
            } catch (error) {
                this.errors.api = "Không thể tải danh sách tỉnh/thành phố";
            } finally {
                this.loading = false;
            }
        },
        validateForm() {
            let isValid = true;
            for (let field in this.errors) {
                this.errors[field] = "";
            }

            if (!this.jobName.trim()) {
                this.errors.jobName = "Vui lòng nhập tên công việc";
                isValid = false;
            }

            if (!this.soluong.trim()) {
                this.errors.soluong = "Vui lòng nhập số lượng";
                isValid = false;
            }

            if (!this.mota.trim()) {
                this.errors.mota = "Vui lòng nhập mô tả công việc";
                isValid = false;
            }

            if (!this.companyType) {
                this.errors.companyType = "Vui lòng chọn mã nghề";
                isValid = false;
            }

            if (!this.province) {
                this.errors.province = "Vui lòng chọn trình độ học vấn";
                isValid = false;
            }

            if (!this.cmkt) {
                this.errors.cmkt = "Vui lòng chọn trình độ CMKT";
                isValid = false;
            }

            if (!this.diadiem) {
                this.errors.diadiem = "Vui lòng chọn nơi làm việc";
                isValid = false;
            }

            if (!this.hinhthuclamviec) {
                this.errors.hinhthuclamviec = "Vui lòng chọn hình thức làm việc";
                isValid = false;
            }

            if (!this.mucdichlamviec) {
                this.errors.mucdichlamviec = "Vui lòng chọn mục đích làm việc";
                isValid = false;
            }

            if (!this.kieuluong) {
                this.errors.kieuluong = "Vui lòng chọn kiểu lương";
                isValid = false;
            }

            if (!this.mucluong) {
                this.errors.mucluong = "Vui lòng chọn mức lương";
                isValid = false;
            }

            if (!this.doanhnghiep.trim()) {
                this.errors.doanhnghiep = "Vui lòng nhập tên doanh nghiệp";
                isValid = false;
            }

            if (!this.mst.trim()) {
                this.errors.mst = "Vui lòng nhập MST";
                isValid = false;
            }

            if (!this.nguoiLH.trim()) {
                this.errors.nguoiLH = "Vui lòng nhập tên người liên hệ";
                isValid = false;
            }

            if (!this.dienthoai.trim()) {
                this.errors.dienthoai = "Vui lòng nhập số điện thoại";
                isValid = false;
            }

            if (!this.emailLH.trim()) {
                this.errors.emailLH = "Vui lòng nhập email liên hệ";
                isValid = false;
            } else if (!this.validateEmail(this.emailLH)) {
                this.errors.emailLH = "Email không hợp lệ";
                isValid = false;
            }

            return isValid;
        },

        validateEmail(email) {
            const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            return re.test(String(email).toLowerCase());
        },

        submitForm() {
            this.submitted = true;

            if (this.validateForm()) {
                alert("Lưu thành công!");
            } else {
                alert("Vui lòng kiểm tra lại thông tin!");
                const firstErrorElement = document.querySelector('.error-message');
                if (firstErrorElement) {
                    firstErrorElement.scrollIntoView({ behavior: 'smooth', block: 'center' });
                }
            }
        },

        formatDate(date) {
            if (!date) return '';
            const day = date.getDate().toString().padStart(2, '0');
            const month = (date.getMonth() + 1).toString().padStart(2, '0');
            const year = date.getFullYear();
            return `${day}/${month}/${year}`;
        }
    },
    computed: {
        isFormValid() {
            return !Object.values(this.errors).some(error => error);
        },
        formData() {
            // Return cleaned form data
            return {
                jobName: this.jobName.trim(),
                soluong: this.soluong,
                // ... other fields
            };
        }
    }
};
</script>

<style>
/* Base styles */
.container {
    max-width: 100%;
    margin: auto;
    padding: 20px;
    font-family: Arial, sans-serif;
    background: #fff;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
}

.section {
    border: 1px solid #ddd;
    padding: 12px;
    margin-bottom: 12px;
    border-radius: 5px;
    background: #f9f9f9;
}

.section-title {
    font-size: 16px;
    font-weight: 600;
    color: #334155;
    margin-top: 25px;
    margin-bottom: 15px;
    padding-bottom: 8px;
    border-bottom: 1px solid #e2e8f0;
}

.label {
    font-size: 14px;
    font-weight: 500;
    color: #475569;
    margin-bottom: 6px;
    display: block;
}

.small-label {
    font-size: 13px;
    font-weight: 400;
    color: #555;
}

/* Input styles */
.input,
.custom-select {
    width: 100%;
    height: 36px;
    padding: 6px 10px;
    border: 1px solid #e2e8f0;
    border-radius: 6px;
    font-size: 14px;
    background: #fff;
    margin-top: 4px;
}

/* Textarea specific */
.input.textarea {
    padding: 8px 10px;
    height: 100%;
}

/* Form layout */
.form-row {
    display: flex;
    gap: 15px;
    margin-bottom: 12px;
}

.col-2-3 {
    flex: 2;
}

.col-1-3 {
    flex: 1;
}

.col-1-2 {
    flex: 1;
    min-width: 0;
}

.col-1-4 {
    flex: 1;
    min-width: 0;
}

/* Job info styles */
.job-info {
    border: 1px dashed #ccc;
    padding: 10px;
    height: 100%;
}

.job-info-row {
    margin-bottom: 10px;
}

/* Buttons */
.buttons {
    display: flex;
    justify-content: center;
    gap: 15px;
    margin-top: 25px;
}

.btn {
    padding: 10px;
    border: none;
    cursor: pointer;
    border-radius: 5px;
}

.cancel {
    background: #f44336;
    color: white;
}

.save {
    background: #4caf50;
    color: white;
}

/* Checkbox styles */
.form-row.checkbox-row {
    display: flex;
    justify-content: flex-start;
    gap: 10px;
    margin-bottom: 12px;
}

.form-row.checkbox-row .checkbox-group {
    margin: 0;
    padding-right: 5px;
}

.form-row.checkbox-row .checkbox-group .label {
    min-width: auto;
    margin-right: 0;
    display: flex;
    align-items: center;
    cursor: pointer;
    white-space: nowrap;
}

.form-row.checkbox-row .checkbox-group input[type="checkbox"] {
    margin-right: 4px;
}

/* Form group */
.form-group {
    flex: 1;
    min-width: 0;
    margin-bottom: 12px;
}

.label {
    min-width: 150px;
    margin-right: 10px;
    margin-bottom: 6px;
    white-space: nowrap;
}

.col-1-3 .form-group,
.col-1-4 .form-group {
    margin-bottom: 0;
}

/* Date picker */
.date-picker {
    height: 36px;
    padding: 6px 10px;
    margin-top: 4px;
}

/* Margin utilities */
.mb-15 {
    margin-bottom: 12px !important;
}

/* Responsive */
@media (max-width: 768px) {
    .form-row {
        flex-direction: column;
        gap: 20px;
        margin-bottom: 25px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    h3.section-title {
        margin-top: 30px;
        margin-bottom: 20px;
    }
}

/* Updated v-select styling */
.v-select {
    position: relative;
    width: 100%;
    font-family: inherit;
}

.v-select .vs__dropdown-toggle {
    border: 1px solid #e2e8f0;
    border-radius: 6px;
    height: 36px;
    padding: 0 8px;
    background: white;
    display: flex;
    align-items: center;
}

.v-select .vs__selected-options {
    display: flex;
    flex-wrap: wrap;
    flex: 1;
    padding: 0;
    position: relative;
}

.v-select .vs__actions {
    display: flex;
    align-items: center;
    padding: 0 6px 0 3px;
    position: relative;
    pointer-events: auto;
}

.v-select .vs__clear {
    fill: #999;
    transform: scale(0.8);
    padding: 0;
    border: 0;
    background: transparent;
    cursor: pointer;
    margin-right: 8px;
    display: flex;
    align-items: center;
}

.v-select .vs__search {
    border: none;
    padding: 0;
    margin: 0;
    width: 0;
    max-width: 100%;
    flex-grow: 1;
    height: 100%;
    line-height: 1.4;
    font-family: inherit;
}

.v-select .vs__selected {
    margin: 0;
    padding: 0;
    display: flex;
    align-items: center;
    background-color: transparent;
    border: none;
    color: #333;
    line-height: 1.4;
    font-size: 14px;
    z-index: 0;
}

.v-select .vs__deselect {
    display: inline-flex;
    appearance: none;
    margin-left: 4px;
    padding: 0;
    border: 0;
    cursor: pointer;
    background: none;
    fill: #999;
    text-shadow: 0 1px 0 #fff;
}

.v-select .vs__dropdown-menu {
    display: block;
    box-sizing: border-box;
    position: absolute;
    top: calc(100% + 4px);
    left: 0;
    z-index: 1000;
    width: 100%;
    max-height: 350px;
    min-width: 160px;
    overflow-y: auto;
    padding: 5px 0;
    background: white;
    border: 1px solid rgba(60, 60, 60, 0.26);
    border-radius: 4px;
    box-shadow: 0 3px 6px 0 rgba(0, 0, 0, 0.15);
}

.v-select .vs__dropdown-option {
    line-height: 1.4;
    padding: 8px 12px;
    margin: 0;
    cursor: pointer;
    font-size: 14px;
}

.v-select .vs__dropdown-option--highlight {
    background: #5897fb;
    color: #fff;
}

.v-select .vs__dropdown-option--disabled {
    background: inherit;
    color: rgba(60, 60, 60, 0.5);
    cursor: not-allowed;
}

.v-select.vs--single .vs__selected {
    width: 100%;
    height: 100%;
    line-height: 34px;
    position: absolute;
    left: 8px;
    top: 0;
    pointer-events: none;
}

.v-select.vs--searchable .vs__dropdown-toggle {
    cursor: text;
}

.v-select.vs--unsearchable .vs__dropdown-toggle {
    cursor: pointer;
}

.v-select.vs--open .vs__dropdown-toggle {
    border-bottom-color: transparent;
    border-bottom-left-radius: 0;
    border-bottom-right-radius: 0;
}

.v-select.vs--loading .vs__spinner {
    display: block;
}

/* Fix for clear button visibility */
.v-select .vs__clear {
    display: flex !important;
    opacity: 0.6;
}

.v-select .vs__clear:hover {
    opacity: 1;
}

/* Validation styles */
.error-message {
    color: #dc2626;
    font-size: 12px;
    margin-top: 2px;
    margin-bottom: 2px;
    display: block;
}

.input-error {
    border-color: #dc2626 !important;
}

.vs-error .vs__dropdown-toggle {
    border-color: #dc2626 !important;
}

/* Add some space after error messages */
.error-message+.form-group,
.error-message+.form-row {
    margin-top: 8px;
}

/* Status checkboxes styling */
.status-checkboxes {
    display: flex;
    justify-content: flex-start;
    align-items: center;
    gap: 15px;
    margin: 15px 0;
    flex-wrap: nowrap;
    padding: 0 5px;
}

.status-checkboxes .checkbox-group {
    flex: 0 0 auto;
    margin: 0;
    white-space: nowrap;
}

.status-checkboxes .checkbox-group .label {
    margin: 0;
    padding: 0;
    font-size: 13px;
    display: flex;
    align-items: center;
    cursor: pointer;
    min-width: auto;
}

.status-checkboxes .checkbox-group input[type="checkbox"] {
    margin-right: 4px;
}

@media (max-width: 1200px) {
    .status-checkboxes {
        flex-wrap: wrap;
        gap: 10px;
        padding: 0;
    }

    .status-checkboxes .checkbox-group {
        flex: 0 0 auto;
    }
}

/* Specific adjustments for contact info section */
.section h3.section-title:nth-of-type(13) {
    /* Targeting "2. Thông tin người liên hệ tuyển dụng" */
    margin-bottom: 12px;
}

.section h3.section-title:nth-of-type(13)+.form-group {
    margin-bottom: 12px;
}

.section h3.section-title:nth-of-type(13)~.form-row {
    margin-bottom: 12px;
}

/* Specific style for job description textarea */
.col-1-2 .input.textarea[placeholder="Nhập mô tả công việc..."] {
    height: 224px;
    /* This matches the height of the right column with its content */
    resize: none;
}
</style>