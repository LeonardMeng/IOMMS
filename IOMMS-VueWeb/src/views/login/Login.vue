<template>
  <div class="login">
    <div class="body-container">
      <el-button size="lager" class="el-radio-button" type="primary" icon="el-icon-search" @click.native='search'>智能归类</el-button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Login',
  data () {
    return {
      initCfg: {
        searchSource: '$$api_test_hello',
        needPage: true
      },
      entity: {},
      tableData: [],
      condition: '',
      form: {},
      searchResult: [],
      searchLoad: false
    }
  },
  methods: {
    search: function () {
      {
        let self = this
        self.loading = false
        self.searchLoad = false
        var param = {}
        this.$$api_test_hello({
          data: param,
          fn: (data) => {
            // eslint-disable-next-line no-constant-condition
            if (true) {
              console.log(data)
            } else {
              self.$message.error(data.message)
            }
            self.listLoading = false
          },
          errFn: (err) => {
            self.$message.error(err)
            self.listLoading = false
          }
        })
      }
    }
  }
}

</script>

<style scoped>
  @import "login.css";
</style>
