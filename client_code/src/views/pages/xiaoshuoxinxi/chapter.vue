<template>
	<div class="body">
		<div class="content">
			<h2 class="section-title">{{ detail.chaptertitle }}</h2>
			<div class="section-content">
				<div class="content-title">{{ detail.title }}</div>
				<div class="content-sub-title">发布时间：{{ detail.addtime }}</div>
				<el-divider></el-divider>
				<div class="content-detail" v-html="detail.content"></div>
				<el-divider></el-divider>
				<div style="display: flex;align-items: center;justify-content: center;width: 100%;margin: 50px 0px;">
					<el-button color="rgb(230,230,230)" round size="large" @click="prepClick">上一章</el-button>
					<el-button type="warning" size="large" round @click="catalogueClick">目录</el-button>
					<el-button color="#626aef" round size="large" @click="nextClick">下一章</el-button>
				</div>
			</div>
		</div>
	</div>
</template>
<script setup>
import {
	ref,
	getCurrentInstance,
	nextTick, onMounted
} from 'vue';
import {
	useRoute,
	useRouter
} from 'vue-router';
const context = getCurrentInstance()?.appContext.config.globalProperties;
const route = useRoute()
const router = useRouter()
const detail = ref({})
const id = ref(0)
const chapterList = ref([])
const getDetail = (type = null) => {
	context?.$http({
		url: 'chapterxiaoshuoxinxi/detail/' + id.value,
		method: 'get'
	}).then(res => {
		detail.value = res.data.data
		window.scrollTo(0, 100)
		if (type) {
			getChapterList()
		}
	})
}

const getChapterList = () => {
	context?.$http({
		url: 'chapterxiaoshuoxinxi/list',
		method: 'get',
		params: { refid: detail.value.refid, limit: 1000 }
	}).then(res => {
		chapterList.value = res.data.data.list
	})
}

const prepClick = () => {
	for (let x in chapterList.value) {
		if (chapterList.value[x].id == id.value) {
			if (x == 0) {
				context?.$toolUtil.message('没有上一章了！', 'error')
				return false
			}
			id.value = chapterList.value[Number(x) - 1].id
			getDetail(null);
			// window.scrollTo(0, 0)
			break;
		}
	}
}
// onMounted(()=>{
// 	window.addEventListener('scroll', ()=>{
// 		console.log(scrollY)
// 	})
// })

const catalogueClick = () => {
	history.back()
}
const nextClick = () => {
	for (let x in chapterList.value) {
		if (chapterList.value[x].id == id.value) {
			if (x == chapterList.value.length - 1) {
				context?.$toolUtil.message('已经是最后一章了!', 'error')
				return false
			}
			if (chapterList.value[Number(x) + 1].vipread == '是' && context?.$toolUtil.storageGet('vip') != '是') {
				context?.$toolUtil.message('下一章为vip章节，请购买会员后阅读!', 'error')
				return false
			}
			id.value = chapterList.value[Number(x) + 1].id
			getDetail(null);
			// window.scrollTo(0, 0)
			break;
		}
	}
}
const init = () => {
	id.value = route.query.id
	getDetail(1)
}
init()
</script>
<style rel="stylesheet/scss" lang="scss" scoped>
.body {
	background-color: rgb(224, 224, 224);
}

.content {
	margin-left: 300px;
	margin-right: 300px;
	background-color: rgb(242, 242, 242);
	padding: 20px 100px;
}

.section {
	width: 900px;
	margin: 0 auto;
}

.section-content {
	margin-top: 30px;
}

.content-title {

	font-size: 22px;
	font-weight: bold;
}

.content-sub-title {

	margin-top: 20px;
	color: #888888;
	font-size: 14px;
}
</style>
