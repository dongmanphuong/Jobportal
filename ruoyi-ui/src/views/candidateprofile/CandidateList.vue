<template>
    <div>
        <SearchForm />
        <CandidateList />
    </div>
</template>

<script>
import CandidateList from '../../components/CandidateProfile/CandidateList.vue';
import SearchForm from '../../components/CandidateProfile/SearchForm.vue';

export default {
    components: {
        CandidateList,
        SearchForm
    }
};
</script>