"use strict";(self["webpackChunkvue3_nf0"]=self["webpackChunkvue3_nf0"]||[]).push([[388],{388:function(l,e,a){a.r(e),a.d(e,{default:function(){return H}});var i=a(6252),s=a(3577),t=a(2262),u=a(9963),o=a(2201);const n=l=>((0,i.dD)("data-v-6ac2da80"),l=l(),(0,i.Cn)(),l),r={class:"register_view"},d={class:"title_view"},v={class:"list_item"},_=n((()=>(0,i._)("div",{class:"list_label"},"账号：",-1))),c={class:"list_item"},p=n((()=>(0,i._)("div",{class:"list_label"},"姓名：",-1))),m={class:"list_item"},g=n((()=>(0,i._)("div",{class:"list_label"},"密码：",-1))),h={class:"list_item"},w=n((()=>(0,i._)("div",{class:"list_label"},"确认密码：",-1))),f={class:"list_item"},b=n((()=>(0,i._)("div",{class:"list_label"},"头像：",-1))),x={class:"list_file_list"},U={class:"list_item"},y=n((()=>(0,i._)("div",{class:"list_label"},"性别：",-1))),$={class:"list_item"},j=n((()=>(0,i._)("div",{class:"list_label"},"手机：",-1))),V={class:"list_btn"};var k={__name:"register",setup(l){const e=(0,i.FN)()?.appContext.config.globalProperties,a=e?.$project.projectName,n=((0,o.yj)(),(0,t.iH)("duzhe")),k=(0,t.iH)({xingbie:""}),C=(0,t.iH)([]),z=()=>{C.value="男,女".split(",")},H=l=>{k.value.touxiang=l},W=()=>{let l=n.value+"/register";return k.value.zhanghao?k.value.mima?k.value.mima!=k.value.mima2?(e?.$toolUtil.message("两次密码输入不一致","error"),!1):(null!=k.value.touxiang&&(k.value.touxiang=k.value.touxiang.replace(new RegExp(e?.$config.url,"g"),"")),k.value.shouji&&!e?.$toolUtil.isMobile(k.value.shouji)?(e?.$toolUtil.message("手机应输入手机格式","error"),!1):void e?.$http({url:l,method:"post",data:k.value}).then((l=>{e?.$toolUtil.message("注册成功","success",(l=>{e?.$router.push({path:"/login"})}))}))):(e?.$toolUtil.message("密码不能为空","error"),!1):(e?.$toolUtil.message("账号不能为空","error"),!1)},D=()=>{e?.$router.push({path:"/login"})};return z(),(l,e)=>{const o=(0,i.up)("uploads"),n=(0,i.up)("el-option"),z=(0,i.up)("el-select"),N=(0,i.up)("el-button"),E=(0,i.up)("el-form");return(0,i.wg)(),(0,i.iD)("div",null,[(0,i._)("div",r,[(0,i.Wm)(E,{model:k.value,class:"register_form"},{default:(0,i.w5)((()=>[(0,i._)("div",d,(0,s.zw)((0,t.SU)(a))+"注册",1),(0,i._)("div",v,[_,(0,i.wy)((0,i._)("input",{class:"list_inp","onUpdate:modelValue":e[0]||(e[0]=l=>k.value.zhanghao=l),placeholder:"请输入账号",type:"text"},null,512),[[u.nr,k.value.zhanghao]])]),(0,i._)("div",c,[p,(0,i.wy)((0,i._)("input",{class:"list_inp","onUpdate:modelValue":e[1]||(e[1]=l=>k.value.xingming=l),placeholder:"请输入姓名",type:"text"},null,512),[[u.nr,k.value.xingming]])]),(0,i._)("div",m,[g,(0,i.wy)((0,i._)("input",{class:"list_inp","onUpdate:modelValue":e[2]||(e[2]=l=>k.value.mima=l),placeholder:"请输入密码",type:"password"},null,512),[[u.nr,k.value.mima]])]),(0,i._)("div",h,[w,(0,i.wy)((0,i._)("input",{class:"list_inp","onUpdate:modelValue":e[3]||(e[3]=l=>k.value.mima2=l),type:"password",placeholder:"请输入确认密码"},null,512),[[u.nr,k.value.mima2]])]),(0,i._)("div",f,[b,(0,i._)("div",x,[(0,i.Wm)(o,{action:"file/upload",tip:"请上传头像",limit:3,style:{width:"100%","text-align":"left"},fileUrls:k.value.touxiang?k.value.touxiang:"",onChange:H},null,8,["fileUrls"])])]),(0,i._)("div",U,[y,(0,i.Wm)(z,{class:"list_sel",modelValue:k.value.xingbie,"onUpdate:modelValue":e[4]||(e[4]=l=>k.value.xingbie=l),placeholder:"请选择性别"},{default:(0,i.w5)((()=>[((0,i.wg)(!0),(0,i.iD)(i.HY,null,(0,i.Ko)(C.value,(l=>((0,i.wg)(),(0,i.j4)(n,{label:l,value:l},null,8,["label","value"])))),256))])),_:1},8,["modelValue"])]),(0,i._)("div",$,[j,(0,i.wy)((0,i._)("input",{class:"list_inp","onUpdate:modelValue":e[5]||(e[5]=l=>k.value.shouji=l),placeholder:"请输入手机",type:"text"},null,512),[[u.nr,k.value.shouji]])]),(0,i._)("div",V,[(0,i.Wm)(N,{class:"register",type:"success",onClick:W},{default:(0,i.w5)((()=>[(0,i.Uk)("注册")])),_:1}),(0,i._)("div",{class:"r-login",onClick:D},"已有账号，直接登录")])])),_:1},8,["model"])])])}}},C=a(3744);const z=(0,C.Z)(k,[["__scopeId","data-v-6ac2da80"]]);var H=z}}]);
//# sourceMappingURL=388.b87d9403.js.map