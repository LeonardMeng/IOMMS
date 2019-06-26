<template>

  <div style="background: url('../../static/img/starfield.jpg'); height: 100%">
    <Title></Title>
    <left-components></left-components>
    <middle-components></middle-components>
    <right-components></right-components>
  </div>

</template>

<script>
import Title from './Title'
import LeftComponents from './Left/LeftComponents'
import MiddleComponents from './Middle/MiddleComponents'
import RightComponents from './Right/RightComponents'
export default {
  name: 'controlcabin',
  components: {
    RightComponents,
    MiddleComponents,
    LeftComponents,
    Title
  }
}
</script>

<style>
  @import "../../static/css/controlcabin.css";
</style>
