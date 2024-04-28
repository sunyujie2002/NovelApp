<template>
    <el-avatar :size="props.size" :src="'http://localhost:8080/novel_db/' + store.state.avatar" @error="errorHandler">
        <img :src="defaultAvatar" />
    </el-avatar>
</template>
<script setup>
import { toRefs, defineEmits, getCurrentInstance, ref, onBeforeUnmount, onMounted, defineProps } from 'vue';
import { useStore } from 'vuex'
const store = useStore()
const defaultAvatar = ref('https://cube.elemecdn.com/3/7c/3ea6beec64369c2642b92c6726f1epng.png')
const context = getCurrentInstance()?.appContext.config.globalProperties;
// function fn() {
//     return () => {
//         avatar.value = context?.$toolUtil.storageGet('avatar')
//     }
// }
// let timer = setInterval(fn(), 1000);
// onMounted(()=>{
//     console.log(1)
// })
// onBeforeUnmount(() => {
//     clearInterval(timer)
// })
const props = defineProps(['size'])
const getInfo = () => {
    context?.$http({
        url: `zuojia/session`,
        method: 'get'
    }).then(res => {
        context?.$toolUtil.storageSet('avatar', res.data.data?.zhaopian)
        store.dispatch('setAvatar', context?.$toolUtil.storageGet('avatar'))
    })
}
getInfo()
</script>
<style lang="scss" scoped>
.el-avatar .el-avatar--circle {
    cursor: pointer;
    margin: 0 20px 0 0;
}
</style>