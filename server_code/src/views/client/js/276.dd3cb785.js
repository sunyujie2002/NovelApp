"use strict";(self["webpackChunkvue3_nf0"]=self["webpackChunkvue3_nf0"]||[]).push([[276],{263:function(e,a,t){t.r(a),t.d(a,{default:function(){return $}});t(7658);var l=t(6252),s=t(3577),n=t.p+"img/avatar.82999e9a.png",o=t(2262),i=t(9737),r=t(2201);const u={class:"app-contain",style:{width:"1200px",padding:"0",margin:"0px auto 40px",position:"relative",borderRadius:"20px",background:"none"}},d={key:0,class:"back_view"},c={class:"messages_list"},p={class:"add_view"},v=["onMouseenter"],g={class:"messages_user"},m=["src"],_={key:1,class:"messages_user_avatar",src:n,alt:""},f={class:"messages_user_name"},w=["innerHTML"],k={key:0,class:"messages_reply_view"},h=["innerHTML"],y={class:"messages_del_view"},x=["onClick"],b={class:"formModel_btn_box"};var C={__name:"list",setup(e){const a=(0,l.FN)()?.appContext.config.globalProperties,t="留言板",n=(0,r.tv)(),C=(0,r.yj)(),H=(e,t)=>a?.$toolUtil.isAuth(e,t),U=(0,o.iH)([]),$=(0,o.iH)(!1),W=(0,o.iH)({page:1,limit:20,sort:"addtime",order:"desc"}),M=((0,o.iH)({}),(0,o.iH)(0)),T=(0,o.iH)(0),D=()=>{$.value=!0;let e=JSON.parse(JSON.stringify(W.value));a?.$http({url:"messages/list",method:"get",params:e}).then((e=>{$.value=!1,U.value=e.data.data.list,M.value=e.data.data.total}))},q=(0,o.iH)(["total","prev","pager","next","sizes"]),z=e=>{W.value.limit=e,D()},G=e=>{W.value.page=e,D()},L=()=>{W.value.page=W.value.page-1,D()},j=()=>{W.value.page=W.value.page+1,D()},N=(0,o.iH)(!1),S=()=>{n.push(`/index/${a?.$toolUtil.storageGet("frontSessionTable")}Center`)},O=(0,o.iH)({content:"",userid:"",username:"",avatarurl:""}),V=(0,o.iH)(!1),A=()=>{O.value={content:"",userid:a?.$toolUtil.storageGet("userid"),username:a?.$toolUtil.storageGet("frontName"),avatarurl:a?.$toolUtil.storageGet("headportrait")?a?.$toolUtil.storageGet("headportrait"):""}},B=()=>{A(),V.value=!0},J=e=>{O.value.content=e},P=()=>{if(""==O.value.content)return a?.$toolUtil.message("请输入内容","error"),!1;let e="",t=[];e&&(t=e.split(","));for(var l=0;l<t.length;l++){var s=new RegExp(t[l],"g");O.value.content.indexOf(t[l])>-1&&(O.value.content=O.value.content.replace(s,"**"))}a?.$http({url:"messages/add",method:"post",data:O.value}).then((e=>{a?.$toolUtil.message("发表成功","success",(()=>{D(),V.value=!1}))}))},R=(e=null)=>{e&&i.T.confirm("是否删除选中留言","提示",{confirmButtonText:"是",cancelButtonText:"否",type:"warning"}).then((()=>{a?.$http({url:"messages/delete",method:"post",data:[e]}).then((e=>{a?.$toolUtil.message("删除成功","success",(()=>{D()}))}))}))},E=(0,o.iH)(-1),F=e=>{E.value=e},I=()=>{C.query.centerType&&(N.value=!0),T.value=a?.$toolUtil.storageGet("userid"),D()};return I(),(e,a)=>{const n=(0,l.up)("el-button"),o=(0,l.up)("el-divider"),i=(0,l.up)("el-pagination"),r=(0,l.up)("editor"),C=(0,l.up)("el-form-item"),$=(0,l.up)("el-col"),D=(0,l.up)("el-row"),A=(0,l.up)("el-form"),I=(0,l.up)("el-dialog");return(0,l.wg)(),(0,l.iD)("div",u,[N.value?((0,l.wg)(),(0,l.iD)("div",d,[(0,l.Wm)(n,{class:"back_btn",onClick:S,type:"primary"},{default:(0,l.w5)((()=>[(0,l.Uk)("返回")])),_:1})])):(0,l.kq)("",!0),(0,l._)("div",{class:"section_title"},(0,s.zw)(t)),(0,l._)("div",c,[(0,l._)("div",p,[H("messages","新增")?((0,l.wg)(),(0,l.j4)(n,{key:0,class:"add_btn",onClick:B},{default:(0,l.w5)((()=>[(0,l.Uk)("发表")])),_:1})):(0,l.kq)("",!0)]),((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(U.value,((t,n)=>((0,l.wg)(),(0,l.iD)("div",{class:"messages",key:n,onMouseenter:e=>F(n),onMouseleave:a[0]||(a[0]=(...a)=>e.messageLeave&&e.messageLeave(...a))},[(0,l._)("div",g,[t.avatarurl?((0,l.wg)(),(0,l.iD)("img",{key:0,class:"messages_user_avatar",src:e.$config.url+t.avatarurl.split(",")[0],alt:""},null,8,m)):((0,l.wg)(),(0,l.iD)("img",_)),(0,l._)("span",f,"用户："+(0,s.zw)(t.username),1)]),(0,l._)("div",{class:"messages_content",innerHTML:t.content},null,8,w),t.reply?((0,l.wg)(),(0,l.iD)("div",k,[(0,l.Wm)(o,{"content-position":"left"},{default:(0,l.w5)((()=>[(0,l.Uk)("回复")])),_:1}),(0,l._)("div",{class:"meaages_reply",innerHTML:t.reply},null,8,h)])):(0,l.kq)("",!0),(0,l._)("div",y,[E.value==n&&t.userid==T.value?((0,l.wg)(),(0,l.iD)("div",{key:0,class:"messages_del",onClick:e=>R(t.id)},"删除",8,x)):(0,l.kq)("",!0)]),n!=U.value.length-1?((0,l.wg)(),(0,l.j4)(o,{key:1})):(0,l.kq)("",!0)],40,v)))),128))]),(0,l.Wm)(i,{background:"",layout:q.value.join(","),total:M.value,"page-size":W.value.limit,"prev-text":"上一页","next-text":"下一页","hide-on-single-page":!1,style:{border:"0px solid #eee",padding:"4px 0",margin:"10px 0 20px",whiteSpace:"nowrap",color:"#333",textAlign:"center",flexWrap:"wrap",background:"none",display:"flex",width:"100%",fontWeight:"500",justifyContent:"center"},onSizeChange:z,onCurrentChange:G,onPrevClick:L,onNextClick:j},null,8,["layout","total","page-size"]),(0,l.Wm)(I,{modelValue:V.value,"onUpdate:modelValue":a[2]||(a[2]=e=>V.value=e),title:"发表",width:"50%","destroy-on-close":""},{footer:(0,l.w5)((()=>[(0,l._)("span",b,[(0,l.Wm)(n,{class:"formModel_cancel",onClick:a[1]||(a[1]=e=>V.value=!1)},{default:(0,l.w5)((()=>[(0,l.Uk)("关闭")])),_:1}),(0,l.Wm)(n,{class:"formModel_confirm",type:"primary",onClick:P},{default:(0,l.w5)((()=>[(0,l.Uk)("发表")])),_:1})])])),default:(0,l.w5)((()=>[(0,l.Wm)(A,{class:"add_form",model:O.value,"label-width":"80px"},{default:(0,l.w5)((()=>[(0,l.Wm)(D,null,{default:(0,l.w5)((()=>[(0,l.Wm)($,{span:24},{default:(0,l.w5)((()=>[(0,l.Wm)(C,{prop:"content",label:"内容"},{default:(0,l.w5)((()=>[(0,l.Wm)(r,{value:O.value.content,placeholder:"请输入内容",class:"editor",onChange:J},null,8,["value"])])),_:1})])),_:1})])),_:1})])),_:1},8,["model"])])),_:1},8,["modelValue"])])}}},H=t(3744);const U=(0,H.Z)(C,[["__scopeId","data-v-28ff8622"]]);var $=U}}]);
//# sourceMappingURL=276.dd3cb785.js.map