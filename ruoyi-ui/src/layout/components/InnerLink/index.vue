<template>
  <div :style="'height:' + height" v-loading="loading" element-loading-text="Trang đang tải, vui lòng đợi!">
    <iframe
      :id="iframeId"
      style="width: 100%; height: 100%"
      :src="src"
      frameborder="no"
    ></iframe>
  </div>
</template>

<script>
export default {
  props: {
    src: {
      type: String,
      default: "/"
    },
    iframeId: {
      type: String
    }
  },
  data() {
    return {
      loading: false,
      height: document.documentElement.clientHeight - 94.5 + "px;"
    };
  },
  mounted() {
    var _this = this;
    const iframeId = ("#" + this.iframeId).replace(/\//g, "\\/");
    const iframe = document.querySelector(iframeId);
    // iframe page loading control
    if (iframe.attachEvent) {
      this.loading = true;
      iframe.attachEvent("onload", function () {
        _this.loading = false;
      });
    } else {
      this.loading = true;
      iframe.onload = function () {
        _this.loading = false;
      };
    }
  }
};
</script>
