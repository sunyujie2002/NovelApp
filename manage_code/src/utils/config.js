const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/novel_db/client/index.html'
        }
    },
    getProjectName(){
        return {
            projectName: "基于Vue+Node的小说阅读网站的设计与实现"
        } 
    }
}
export default config
