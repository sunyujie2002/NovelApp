"use strict";(self["webpackChunkvue3_nf0"]=self["webpackChunkvue3_nf0"]||[]).push([[280],{280:function(e,l,a){a.r(l),a.d(l,{default:function(){return k}});a(7658);var t=a(6252),o=a(9963),s=a(2262),u=a(4985);const r=e=>((0,t.dD)("data-v-4544c6b2"),e=e(),(0,t.Cn)(),e),i={class:"login_view"},n=r((()=>(0,t._)("div",{class:"title_view"},"基于Vue+Node的小说阅读网站的设计与实现登录",-1))),v={key:0,class:"list_item"},d=r((()=>(0,t._)("div",{class:"list_label"}," 账号： ",-1))),m={key:1,class:"list_item"},p=r((()=>(0,t._)("div",{class:"list_label"}," 密码： ",-1))),c=["onKeydown"],g={key:2,class:"list_type"},f=r((()=>(0,t._)("div",{class:"list_label"}," 用户类型： ",-1))),w={key:3,class:"remember_view"},_={class:"btn_view"};var h={__name:"login",setup(e){const l=(0,s.iH)([]),a=(0,s.iH)([]),r=(0,s.iH)({role:"",username:"",password:""}),h=(0,s.iH)(""),$=(0,s.iH)(1),b=(0,s.iH)(!0),k=(0,t.FN)()?.appContext.config.globalProperties,y=e=>{k?.$router.push(`/${e}Register`)},U=()=>{if(r.value.username)if(r.value.password){if(l.value.length>1){if(!r.value.role)return k?.$toolUtil.message("请选择角色","error"),void verifySlider.reset();for(let e=0;e<a.value.length;e++)a.value[e].roleName==r.value.role&&(h.value=a.value[e].tableName)}else h.value=l.value[0].tableName,r.value.role=l.value[0].roleName;N()}else k?.$toolUtil.message("请输入密码","error");else k?.$toolUtil.message("请输入用户名","error")},N=()=>{k?.$http({url:`${h.value}/login?username=${r.value.username}&password=${r.value.password}`,method:"post"}).then((e=>{if(b.value){let e=JSON.parse(JSON.stringify(r.value));delete e.code,k?.$toolUtil.storageSet("frontLoginForm",JSON.stringify(e))}else k?.$toolUtil.storageRemove("frontLoginForm");k?.$toolUtil.storageSet("frontToken",e.data.token),k?.$toolUtil.storageSet("frontRole",r.value.role),k?.$toolUtil.storageSet("frontSessionTable",h.value);let l=k?.$toolUtil.storageGet("toPath");if(l)return k?.$router.push(l),void k?.$toolUtil.storageRemove("toPath");k?.$router.push(`/index/${h.value}Center`)}),(e=>{}))},S=async()=>{let e=u.Z.list();if(!e){let l=await(k?.$http.get("menu/list"));k?.$toolUtil.storageSet("menus",l.data.data.list[0].menujson),e=JSON.parse(l.data.data.list[0].menujson)}a.value=e;for(let t=0;t<a.value.length;t++)"是"==a.value[t].hasFrontLogin&&l.value.push(a.value[t])},V=async()=>{await S();let e=k?.$toolUtil.storageGet("frontLoginForm");e?r.value=JSON.parse(e):r.value.role=l.value[0].roleName};return(0,t.bv)((()=>{V()})),(e,a)=>{const s=(0,t.up)("el-option"),u=(0,t.up)("el-select"),h=(0,t.up)("el-checkbox"),k=(0,t.up)("el-button"),N=(0,t.up)("el-form");return(0,t.wg)(),(0,t.iD)("div",null,[(0,t._)("div",i,[(0,t.Wm)(N,{model:r.value,class:"login_form"},{default:(0,t.w5)((()=>[n,1==$.value?((0,t.wg)(),(0,t.iD)("div",v,[d,(0,t.wy)((0,t._)("input",{class:"list_inp","onUpdate:modelValue":a[0]||(a[0]=e=>r.value.username=e),placeholder:"请输入账号"},null,512),[[o.nr,r.value.username]])])):(0,t.kq)("",!0),1==$.value?((0,t.wg)(),(0,t.iD)("div",m,[p,(0,t.wy)((0,t._)("input",{class:"list_inp","onUpdate:modelValue":a[1]||(a[1]=e=>r.value.password=e),type:"password",placeholder:"请输入密码",onKeydown:(0,o.D2)(U,["enter","native"])},null,40,c),[[o.nr,r.value.password]])])):(0,t.kq)("",!0),l.value.length>1?((0,t.wg)(),(0,t.iD)("div",g,[f,(0,t.Wm)(u,{modelValue:r.value.role,"onUpdate:modelValue":a[2]||(a[2]=e=>r.value.role=e),placeholder:"请选择用户类型"},{default:(0,t.w5)((()=>[((0,t.wg)(!0),(0,t.iD)(t.HY,null,(0,t.Ko)(l.value,((e,l)=>((0,t.wg)(),(0,t.j4)(s,{label:e.roleName,value:e.roleName},null,8,["label","value"])))),256))])),_:1},8,["modelValue"])])):(0,t.kq)("",!0),1==$.value?((0,t.wg)(),(0,t.iD)("div",w,[(0,t.Wm)(h,{modelValue:b.value,"onUpdate:modelValue":a[3]||(a[3]=e=>b.value=e),label:"记住密码",size:"large","true-label":!0,"false-label":!1},null,8,["modelValue"])])):(0,t.kq)("",!0),(0,t._)("div",_,[1==$.value?((0,t.wg)(),(0,t.j4)(k,{key:0,class:"login",type:"success",onClick:U},{default:(0,t.w5)((()=>[(0,t.Uk)("登录")])),_:1})):(0,t.kq)("",!0),(0,t.Wm)(k,{class:"register",type:"primary",onClick:a[4]||(a[4]=e=>y("duzhe"))},{default:(0,t.w5)((()=>[(0,t.Uk)("注册读者")])),_:1})])])),_:1},8,["model"])])])}}},$=a(3744);const b=(0,$.Z)(h,[["__scopeId","data-v-4544c6b2"]]);var k=b}}]);
//# sourceMappingURL=280.45865366.js.map