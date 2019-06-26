<template>
  <div style="height:100%;">
  <table cellspacing="0" cellpadding="0">
    <tr>
      <td>
        <table cellspacing="0" cellpadding="0">
          <tr>
            <td>
              <h1>404</h1>
              <h2>Sorry....页面没有找到！</h2>
              <p>您访问的页面不存在或者未开放,可点击 <router-link tag="a" to="/">返回首页</router-link>
                <br/>

              </p>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
</div>
</template>

<script>
export default {
  name: 'Error'
}
</script>

<style scoped>
  * {
    font-family: 'Nova Flat', cursive;
    background-color: #B396FF;
    margin: 0;
    font-weight: lighter;
    text-align: center;
    line-height: 2.2em;
    color: #fff;
  }

  h1 {
    font-size: 100px;
    line-height: 1em;
  }

  table {
    width: 100%;
    height: 100%;
    border: 0;
  }
</style>
