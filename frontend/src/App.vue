<template>
  <v-app>
    <!-- Header -->
    <router-view name="header" />
    <!-- Main -->
    <v-main>
      <router-view />
    </v-main>
    <!-- Footer -->
    <router-view name="footer" />
    <!-- # for. axios 통신 시 Loading 창 -->
    <the-loading :loading="this.$store.state.loadingStatus"></the-loading>
    <!-- # for. quiz Loading 창 -->
    <!-- <the-quiz-loading
      :loading="this.$store.state.quizLoadingStatus"
    ></the-quiz-loading> -->
  </v-app>
</template>

<script>
// # for. axios 통신 시 Loading 창
import TheLoading from "./views/TheLoading.vue";
// # for. quiz Loading 창
// import TheQuizLoading from "./views/TheQuizLoading.vue";

export default {
  name: "App",
  data: () => ({
    isShowHeader: true,
    scrollPosition: 0,
  }),
  // methods: {
  //   changeShowHeader() {
  //     console.log("여기");
  //     var currentScrollPosition = window.scrollY;
  //     console.log(currentScrollPosition);

  //     if (currentScrollPosition + 10 < this.scrollPosition) {
  //       console.log("Scrolling up");
  //       this.isShowHeader = true;
  //       //your desire logic
  //     } else if (currentScrollPosition < this.scrollPosition - 10) {
  //       this.isShowHeader = false;
  //       console.log("Scrolling down");
  //       //your desire logic
  //     }

  //     this.scrollPosition = window.scrollY;
  //   },
  // },
  // mounted() {
  //   window.addEventListener("scroll", this.changeShowHeader);
  // },
  components: {
    TheLoading,
    // TheQuizLoading,
  },
};
</script>

<style>
@import "@/assets/styles/font.css";
@import "@/assets/styles/variable.css";
@import "@/assets/styles/text.css";
@import "@/assets/styles/sheet.css";
@import "@/assets/styles/article.css";
@import "@/assets/styles/override.css";
@import "@/assets/styles/scroll.css";
@import "@/assets/styles/swiper.css";

html body {
  background: #fafafa;
  max-width: 500px;
  margin: 0 auto;
  height: 100%;
  min-height: 100%;
}
#app {
  background-color: var(--main-col-5);
  max-width: 100%;
  min-height: 100%;

  font-family: var(--main-font-2);
}
</style>
