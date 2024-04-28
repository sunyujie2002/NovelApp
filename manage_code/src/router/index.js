import {
	createRouter,
	createWebHashHistory
} from 'vue-router'
import news from '@/views/news/list'
import discusszuojia from '@/views/discusszuojia/list'
import chapterxiaoshuoxinxi from '@/views/chapterxiaoshuoxinxi/list'
import messages from '@/views/messages/list'
import xiaoshuofenlei from '@/views/xiaoshuofenlei/list'
import zuojia from '@/views/zuojia/list'
import storeup from '@/views/storeup/list'
import config from '@/views/config/list'
import duzhe from '@/views/duzhe/list'
import discussxiaoshuoxinxi from '@/views/discussxiaoshuoxinxi/list'
import xiaoshuoxinxi from '@/views/xiaoshuoxinxi/list'
import zuojiaRegister from '@/views/zuojia/register'
import zuojiaCenter from '@/views/zuojia/center'

export const routes = [{
	path: '/login',
	name: 'login',
	component: () => import('../views/login.vue')
}, {
	path: '/',
	name: '首页',
	component: () => import('../views/index'),
	children: [{
		path: '/',
		name: '首页',
		component: () => import('../views/HomeView.vue'),
		meta: {
			affix: true
		}
	}, {
		path: '/updatepassword',
		name: '修改密码',
		component: () => import('../views/updatepassword.vue')
	}

		, {
		path: '/zuojiaCenter',
		name: '作家个人中心',
		component: zuojiaCenter
	}
		, {
		path: '/news',
		name: '小说资讯',
		component: news
	}
		, {
		path: '/discusszuojia',
		name: '作家评论',
		component: discusszuojia
	}
		, {
		path: '/chapterxiaoshuoxinxi',
		name: '小说信息章节',
		component: chapterxiaoshuoxinxi
	}
		, {
		path: '/messages',
		name: '留言板',
		component: messages
	}
		, {
		path: '/xiaoshuofenlei',
		name: '小说分类',
		component: xiaoshuofenlei
	}
		, {
		path: '/zuojia',
		name: '作家',
		component: zuojia
	}
		, {
		path: '/storeup',
		name: '我的关注',
		component: storeup
	}
		, {
		path: '/config',
		name: '轮播图',
		component: config
	}
		, {
		path: '/duzhe',
		name: '读者',
		component: duzhe
	}
		, {
		path: '/discussxiaoshuoxinxi',
		name: '小说信息评论',
		component: discussxiaoshuoxinxi
	}
		, {
		path: '/xiaoshuoxinxi',
		name: '小说信息',
		component: xiaoshuoxinxi
	}
	]
},
{
	path: '/zuojiaRegister',
	name: '作家注册',
	component: zuojiaRegister
},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
