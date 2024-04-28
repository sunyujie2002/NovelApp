const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '留言板管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'留言板',
							url:'/index/messagesList'
						},
					]
				},
				{
					name: '作家管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'作家',
							url:'/index/zuojiaList'
						},
					]
				},
				{
					name: '小说资讯管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'小说资讯',
							url:'/index/newsList'
						},
					]
				},
				{
					name: '小说作品管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'小说信息',
							url:'/index/xiaoshuoxinxiList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "基于Vue+Node的小说阅读网站的设计与实现"
        } 
    }
}
export default config
