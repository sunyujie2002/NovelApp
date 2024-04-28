import { createRouter, createWebHashHistory } from 'vue-router'

const routes = [{
    path: '/',
    redirect: '/index/home'
},
{
    path: '/index',
    component: () => import('../views'),
    children: [{
        path: 'home',
        component: () => import('../views/pages/home.vue')
    }
        , {
        path: 'newsList',
        component: () => import('@/views/pages/news/list')
    }
        , {
        path: 'messagesList',
        component: () => import('@/views/pages/messages/list')
    }
        , {
        path: 'duzheCenter',
        component: () => import('@/views/pages/duzhe/center')
    }
        , {
        path: 'zuojiaList',
        component: () => import('@/views/pages/zuojia/list')
    }, {
        path: 'zuojiaDetail',
        component: () => import('@/views/pages/zuojia/formModel')
    },
    {
        path: 'xiaoshuoxinxiList',
        component: () => import('@/views/pages/xiaoshuoxinxi/list')
    }, {
        path: 'xiaoshuoxinxiDetail',
        component: () => import('@/views/pages/xiaoshuoxinxi/formModel')
    },
    {
        path: 'storeupList',
        component: () => import('@/views/pages/storeup/list')
    }
        , {
        path: 'chapterxiaoshuoxinxiList',
        component: () => import('@/views/pages/chapterxiaoshuoxinxi/list')
    }, {
        path: 'chapterxiaoshuoxinxiDetail',
        component: () => import('@/views/pages/chapterxiaoshuoxinxi/formModel')
    }
    ]
},
{
    path: '/xiaoshuoxinxiChapter',
    component: () => import('@/views/pages/xiaoshuoxinxi/chapter')
},
{
    path: '/login',
    component: () => import('../views/pages/login.vue')
}
    , {
    path: '/duzheRegister',
    component: () => import('@/views/pages/duzhe/register')
}
]

const router = createRouter({
    history: createWebHashHistory(process.env.BASE_URL),
    routes,
    scrollBehavior(to, from, savedPosition) {
        // 滚动到顶部
        return { top: 0 }
    }
})

// router.beforeEach((to, from, next) => {
//     console.log(document.documentElement.scrollTop)
//     document.documentElement.scrollTop = 0
//     next()
//   });
export default router
