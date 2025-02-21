<template>
    <div>
        <SearchForm />
        <Hosoungvien />
    </div>
</template>

<script>
import Hosoungvien from '../../components/Hosoungvien/danhsach.vue';
import SearchForm from '../../components/Hosoungvien/SearchForm.vue';

export default {
    components: {
        Hosoungvien,
        SearchForm
    }
};
</script>