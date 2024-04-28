<template>
	<div class="app-contain"
		:style='{ "width": "1200px", "padding": "0", "margin": "0px auto 40px", "position": "relative", "borderRadius": "20px", "background": "none" }'>
		<div class="back_view" v-if="centerType">
			<el-button class="back_btn" @click="backClick" type="primary">返回</el-button>
		</div>
		<div class="section_title">
			{{ formName }}
		</div>
		<div class="messages_list">
			<div class="add_view">
				<el-button class="add_btn" @click="addClick" v-if="btnAuth('messages', '新增')">发表</el-button>
			</div>
			<div class="messages" v-for="(item, index) in list" :key="index" @mouseenter="messageEnter(index)"
				@mouseleave="messageLeave">
				<div class="messages_user">
					<img v-if="item.avatarurl" class="messages_user_avatar"
						:src="$config.url + item.avatarurl.split(',')[0]" alt="">
					<img v-else class="messages_user_avatar" src="@/assets/avatar.png" alt="">
					<span class="messages_user_name">{{ item.username }}</span>
				</div>
				<div class="messages_content" v-html="item.content"></div>
				<div class="messages_reply_view" v-if="item.reply">
					<el-divider content-position="left">管理员回复</el-divider>
					<div class="meaages_reply" v-html="item.reply"></div>
				</div>
				<div class="messages_del_view">
					<div class="messages_del" @click="delClick(item.id)"
						v-if="messageShowIndex == index && item.userid == userid">删除</div>
				</div>
				<el-divider v-if="index != list.length - 1" />
			</div>
		</div>
		<el-pagination background :layout="layouts.join(',')" :total="total" :page-size="listQuery.limit"
			prev-text="上一页" next-text="下一页" :hide-on-single-page="false"
			:style='{ "border": "0px solid #eee", "padding": "4px 0", "margin": "10px 0 20px", "whiteSpace": "nowrap", "color": "#333", "textAlign": "center", "flexWrap": "wrap", "background": "none", "display": "flex", "width": "100%", "fontWeight": "500", "justifyContent": "center" }'
			@size-change="sizeChange" @current-change="currentChange" @prev-click="prevClick" @next-click="nextClick" />
		<el-dialog v-model="formVisible" :title="'发表'" width="50%" destroy-on-close>
			<el-form class="add_form" :model="form" label-width="80px">
				<el-row>
					<el-col :span="24">
						<el-form-item prop="content" label="内容">
							<editor :value="form.content" placeholder="请输入内容" class="editor" @change="contentChange">
							</editor>
						</el-form-item>
					</el-col>
				</el-row>
			</el-form>
			<template #footer>
				<span class="formModel_btn_box">
					<el-button class="formModel_cancel" @click="formVisible = false">关闭</el-button>
					<el-button class="formModel_confirm" type="primary" @click="save">发表</el-button>
				</span>
			</template>
		</el-dialog>
	</div>
</template>

<script setup>
import {
	ref,
	nextTick,
	getCurrentInstance
} from 'vue';
import {
	ElMessageBox
} from 'element-plus'
import {
	useRoute,
	useRouter
} from 'vue-router'
const context = getCurrentInstance()?.appContext.config.globalProperties;
//基础信息
const tableName = 'messages'
const formName = '留言板'
const router = useRouter()
const route = useRoute()
//基础信息
//权限验证
const btnAuth = (e, a) => {
	return context?.$toolUtil.isAuth(e, a)
}
const list = ref([])
const listLoading = ref(false)
const listQuery = ref({
	page: 1,
	limit: 20,
	sort: 'addtime',
	order: 'desc'
})
const searchQuery = ref({})
const total = ref(0)
const userid = ref(0)
const searchClick = () => {
	listQuery.value.page = 1
	getList()
}
const getList = () => {
	listLoading.value = true
	let params = JSON.parse(JSON.stringify(listQuery.value))
	context?.$http({
		url: `messages/list`,
		method: 'get',
		params: params
	}).then(res => {
		listLoading.value = false
		list.value = res.data.data.list
		total.value = res.data.data.total
	})
}
//分页
const layouts = ref(["total", "prev", "pager", "next", "sizes"])
const sizeChange = (size) => {
	listQuery.value.limit = size
	getList()
}
const currentChange = (page) => {
	listQuery.value.page = page
	getList()
}
const prevClick = () => {
	listQuery.value.page = listQuery.value.page - 1
	getList()
}
const nextClick = () => {
	listQuery.value.page = listQuery.value.page + 1
	getList()
}
//分页
//判断是否从个人中心跳转
const centerType = ref(false)
//返回
const backClick = () => {
	router.push(`/index/${context?.$toolUtil.storageGet('frontSessionTable')}Center`)
}
const form = ref({
	content: '',
	userid: '',
	username: '',
	avatarurl: ''
})
const formVisible = ref(false)
const resetForm = () => {
	form.value = {
		content: '',
		userid: context?.$toolUtil.storageGet('userid'),
		username: context?.$toolUtil.storageGet('frontName'),
		avatarurl: context?.$toolUtil.storageGet('headportrait') ? context?.$toolUtil.storageGet('headportrait') : ''
	}
}
//发表
const addClick = () => {
	resetForm()
	formVisible.value = true
}
//富文本回调
const contentChange = (e) => {
	form.value.content = e
}
const save = () => {
	if (form.value.content == '') {
		context?.$toolUtil.message('请输入内容', 'error')
		return false
	}
	let sensitiveWords = "";
	let sensitiveWordsArr = [];
	if (sensitiveWords) {
		sensitiveWordsArr = sensitiveWords.split(",");
	}
	for (var i = 0; i < sensitiveWordsArr.length; i++) {
		//全局替换
		var reg = new RegExp(sensitiveWordsArr[i], "g");
		//判断内容中是否包括敏感词
		if (form.value.content.indexOf(sensitiveWordsArr[i]) > -1) {
			// 将敏感词替换为 **
			form.value.content = form.value.content.replace(reg, "**");
		}
	}
	context?.$http({
		url: 'messages/add',
		method: 'post',
		data: form.value
	}).then(res => {
		context?.$toolUtil.message(`发表成功`, 'success', () => {
			getList()
			formVisible.value = false
		})
	})
}
//删除
const delClick = (id = null) => {
	if (id) {
		ElMessageBox.confirm(`是否删除选中留言`, '提示', {
			confirmButtonText: '是',
			cancelButtonText: '否',
			type: 'warning',
		}).then(() => {
			context?.$http({
				url: `messages/delete`,
				method: 'post',
				data: [id]
			}).then(res => {
				context?.$toolUtil.message('删除成功', 'success', () => {
					getList()
				})
			})
		})
	}
}
//控制删除显示
const messageShowIndex = ref(-1)
const messageEnter = (e) => {
	messageShowIndex.value = e
}
const meeageLeave = () => {
	messageShowIndex.value = -1
}
const init = () => {
	if (route.query.centerType) {
		centerType.value = true
	}
	userid.value = context?.$toolUtil.storageGet('userid')
	getList()
}
init()
</script>

<style lang="scss" scoped>
// 返回盒子
.back_view {
	border-radius: 0px;
	padding: 0 20px;
	margin: 0;
	background: none;
	display: inline-block;
	width: 100%;
	text-align: right;

	// 返回按钮
	.back_btn {
		border: 1px solid #eee;
		cursor: pointer;
		border-radius: 4px;
		padding: 0 20px;
		color: #666;
		background: #fff;
		width: auto;
		font-size: 14px;
		height: 24px;
	}

	// 返回按钮-悬浮
	.back_btn:hover {}
}

// 列表盒子
.messages_list {
	border: 0px solid #eee;
	border-radius: 0 0 20px 20px;
	padding: 20px 20px 20px 2%;
	box-shadow: 0 0px 0px rgba(0, 0, 0, .3);
	margin: 0px auto;
	overflow: hidden;
	background: none;
	display: flex;
	width: 100%;
	align-items: flex-start;
	box-sizing: border-box;
	flex-wrap: wrap;

	// 新增盒子
	.add_view {
		border: 0px solid #eee;
		border-radius: 4px;
		box-shadow: none;
		padding: 0px;
		margin: 0 0 20px;
		background: none;
		width: 100%;
		text-align: right;

		// 新增按钮
		.add_btn {
			border: 0px solid #27bacc;
			cursor: pointer;
			border-radius: 2px;
			padding: 0 30px;
			margin: 10px 0;
			color: #fff;
			background: rgb(255, 153, 0);
			width: auto;
			font-size: 14px;
			height: 36px;
		}

		// 新增按钮-悬浮
		.add_btn:hover {}
	}

	// item
	.messages {
		border-radius: 0px;
		padding: 0;
		margin: 0 0 30px 0;
		background: #fff;
		width: 100%;
		border-color: #eee;
		border-width: 1px;
		border-style: solid;
		float: left;

		// 用户盒子
		.messages_user {
			padding: 4px 20px;
			margin: 0 0 10px;
			background: nnoe;
			display: flex;
			border-color: #eee;
			border-width: 0 0 1px;
			align-items: center;
			border-style: solid;

			// 用户头像
			.messages_user_avatar {
				border-radius: 50%;
				margin: 0 10px 0 0;
				width: 40px;
				height: 40px;
			}

			// 用户名
			.messages_user_name {
				color: #333;
				font-weight: 600;
				font-size: 14px;
			}
		}

		// 内容
		.messages_content {
			padding: 20px;
			background: none;
			width: 100%;
			text-align: left;
		}

		// 回复盒子
		.messages_reply_view {
			margin: 0 0 0 20px;
			width: calc(100% - 40px);
			text-align: left;

			// 分割线样式
			:deep(.el-divider) {
				border: none;
				background: #ddd;

				// 分割线文字样式
				.el-divider__text {
					background: #fff;
					font-size: 16px;
				}
			}

			// 回复内容
			.meaages_reply {
				color: #666;
				font-size: 14px;
			}
		}

		// 操作按钮盒子
		.messages_del_view {
			padding: 0 10px 0 0;
			display: flex;
			width: 100%;
			justify-content: flex-end;
			align-items: center;
			box-sizing: border-box;
			height: 30px;

			// 删除按钮
			.messages_del {
				cursor: pointer;
				color: #cc0000;
				font-size: 14px;
			}

			// 删除按钮-悬浮
			.messages_del:hover {
				color: #cc0000;
			}
		}
	}
}

// 分页器
.el-pagination {

	// 总页码
	:deep(.el-pagination__total) {
		margin: 0 10px 0 0;
		color: #666;
		font-weight: 400;
		display: inline-block;
		vertical-align: top;
		font-size: 13px;
		line-height: 24px;
		height: 24px;
	}

	// 上一页
	:deep(.btn-prev) {
		border: 0px solid #ddd;
		border-radius: 4px;
		padding: 0 4px;
		margin: 0 2px;
		color: #666;
		background: none;
		display: inline-block;
		vertical-align: top;
		font-size: 13px;
		line-height: 24px;
		min-width: 24px;
		height: 24px;
	}

	// 下一页
	:deep(.btn-next) {
		border: 0px solid #ddd;
		border-radius: 4px;
		padding: 0 4px;
		margin: 0 2px;
		color: #666;
		background: none;
		display: inline-block;
		vertical-align: top;
		font-size: 14px;
		line-height: 24px;
		min-width: 24px;
		height: 24px;
	}

	// 上一页禁用
	:deep(.btn-prev:disabled) {
		border: 0px solid #ddd;
		cursor: not-allowed;
		padding: 0 4px;
		margin: 0 2px;
		color: #C0C4CC;
		display: inline-block;
		vertical-align: top;
		font-size: 14px;
		line-height: 24px;
		border-radius: 4px;
		background: none;
		min-width: 24px;
		height: 24px;
	}

	// 下一页禁用
	:deep(.btn-next:disabled) {
		border: 0px solid #ddd;
		cursor: not-allowed;
		padding: 0 4px;
		margin: 0 2px;
		color: #C0C4CC;
		display: inline-block;
		vertical-align: top;
		font-size: 14px;
		line-height: 24px;
		border-radius: 4px;
		background: none;
		min-width: 24px;
		height: 24px;
	}

	// 页码
	:deep(.el-pager) {
		padding: 0;
		margin: 0;
		display: inline-block;
		vertical-align: top;

		// 数字
		.number {
			cursor: pointer;
			padding: 0 4px;
			margin: 0 5px;
			color: #666;
			display: inline-block;
			vertical-align: top;
			font-size: 13px;
			line-height: 24px;
			border-radius: 0;
			background: #fff;
			text-align: center;
			min-width: 24px;
			height: 24px;
		}

		// 数字悬浮
		.number:hover {
			cursor: pointer;
			padding: 0 4px;
			margin: 0 5px;
			color: #fff;
			display: inline-block;
			vertical-align: top;
			font-size: 13px;
			line-height: 24px;
			border-radius: 0;
			background: #ff9900;
			text-align: center;
			min-width: 24px;
			height: 24px;
		}

		// 选中
		.number.is-active {
			cursor: default;
			padding: 0 4px;
			margin: 0 5px;
			color: #fff;
			display: inline-block;
			vertical-align: top;
			font-size: 13px;
			line-height: 24px;
			border-radius: 0;
			background: #ff9900;
			text-align: center;
			min-width: 24px;
			height: 24px;
		}
	}

	// sizes
	:deep(.el-pagination__sizes) {
		box-shadow: none;
		margin: 0 0 0 5px;
		display: inline-block;
		vertical-align: top;
		font-size: 13px;
		line-height: 24px;
		height: 24px;

		.el-select {
			border: 0px solid #DCDFE6;
			cursor: pointer;
			border-radius: 2px;
			padding: 0;
			color: #606266;
			background: #fff;
			display: inline-block;
			width: 100%;
			font-size: 13px;
			line-height: 24px;
			text-align: center;
			height: 24px;

			//去掉默认样式
			.select-trigger {
				height: 100%;

				.el-input {
					height: 100%;

					.el-input__wrapper {
						border: none;
						box-shadow: none;
						background: none;
						border-radius: 0;
						height: 100%;
						padding: 0;
					}

					.is-focus {
						box-shadow: none !important;
					}
				}
			}
		}
	}

	// 跳页
	:deep(.el-pagination__jump) {
		margin: 0 0 0 24px;
		color: #606266;
		display: inline-block;
		vertical-align: top;
		font-size: 13px;
		line-height: 28px;
		height: 28px;

		// 输入框
		.el-input {
			border: 1px solid #DCDFE6;
			cursor: pointer;
			padding: 0 3px;
			margin: 0 6px;
			color: #606266;
			display: inline-block;
			font-size: 14px;
			line-height: 24px;
			border-radius: 3px;
			outline: 0;
			background: #FFF;
			width: 38px;
			text-align: center;
			height: 24px;

			//去掉默认样式
			.el-input__wrapper {
				border: none;
				box-shadow: none;
				background: none;
				border-radius: 0;
				height: 100%;
				padding: 0;
			}

			.is-focus {
				box-shadow: none !important;
			}
		}
	}
}

// 表单
.add_form {
	border: 0px solid #27bacc30;
	border-radius: 0px;
	padding: 30px 7%;
	background: none;

	// form item
	:deep(.el-form-item) {
		border: 0px solid #eee;
		padding: 6px 0;
		margin: 0 0 20px 0;
		background: none;
		display: flex;

		//label
		.el-form-item__label {
			background: none;
			display: block;
			width: auto;
			min-width: 150px;
			text-align: right;
		}

		// 内容盒子
		.el-form-item__content {
			display: flex;
			width: calc(100% - 150px);
			justify-content: flex-start;
			align-items: center;
			flex-wrap: wrap;

			// 富文本
			.list_editor {
				border-radius: 0;
				padding: 0;
				margin: 0;
				background: #fff;
				width: 99%;
				min-height: 250px;
				border-color: #eee;
				border-width: 1px;
				border-style: solid;
				height: auto;
			}
		}
	}
}

// 按钮盒子
.formModel_btn_box {
	padding: 0 150px;
	display: flex;
	width: 100%;
	justify-content: center;
	align-items: center;

	.formModel_cancel {
		border: 0px solid #ccc;
		cursor: pointer;
		border-radius: 2px;
		padding: 0 40px;
		margin: 0 20px 0 0;
		color: #fff;
		background: #c00;
		width: auto;
		font-size: 14px;
		line-height: 40px;
		height: 40px;
	}

	.formModel_cancel:hover {}

	.formModel_confirm {
		border: 0;
		cursor: pointer;
		border-radius: 2px;
		padding: 0 40px;
		margin: 0 20px 0 0;
		color: #fff;
		background: rgb(255, 153, 0);
		width: auto;
		font-size: 14px;
		line-height: 40px;
		height: 40px;
	}

	.formModel_confirm:hover {}
}
</style>