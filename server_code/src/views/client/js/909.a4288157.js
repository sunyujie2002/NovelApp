"use strict";(self["webpackChunkvue3_nf0"]=self["webpackChunkvue3_nf0"]||[]).push([[909],{4909:function(e,a,t){t.r(a),t.d(a,{default:function(){return Q}});t(7658);var l=t(6252),i=t(3577),o=(t(6154),t(2262)),s=t(9737),n=t(2201);const u=e=>((0,l.dD)("data-v-00e0fc7c"),e=e(),(0,l.Cn)(),e),d={class:"app-contain",style:{padding:"20px 20px",margin:"0px auto 40px",alignItems:"flex-start",flexWrap:"wrap",background:"none",display:"flex",width:"1200px",position:"relative",justifyContent:"space-between"}},c={class:"back_view"},r={class:"bread_view"},p={class:"detail_view"},v={class:"swiper_view"},m=["src"],_={class:"info_view"},g={class:"title_view"},f={class:"detail_title"},w=u((()=>(0,l._)("i",{class:"iconfont icon-likeline1"},null,-1))),h=u((()=>(0,l._)("span",null,"关注",-1))),k=[w,h],y=u((()=>(0,l._)("i",{class:"iconfont iconfontActive icon-likefill1"},null,-1))),b=u((()=>(0,l._)("span",{class:"textActive"},"取消关注",-1))),x=[y,b],$={class:"info_item"},z=u((()=>(0,l._)("div",{class:"info_label"},"作家账号",-1))),U={class:"info_text"},C={class:"info_item"},j=u((()=>(0,l._)("div",{class:"info_label"},"性别",-1))),H={class:"info_text"},W={class:"info_item"},q=u((()=>(0,l._)("div",{class:"info_label"},"电话",-1))),A={class:"info_text"},D={class:"info_item"},G=u((()=>(0,l._)("div",{class:"info_label"},"作家简介",-1))),T={class:"info_text"},V={class:"btn_view"},B={class:"my_comment_view"},F={class:"comment_btn"},P={class:"comment_list"},S={class:"comment_top"},N={class:"comment_user"},I={class:"comment_user_img"},K=["src"],M={class:"comment_user_info"},R={class:"comment_time"},Y={class:"comment_bottom"},E={class:"comment_content"},O={key:0,class:"comment_reply"};var Z={__name:"formModel",setup(e){const a=(0,l.FN)()?.appContext.config.globalProperties,t=(0,n.yj)(),u=(0,n.tv)(),w="zuojia",h="作家",y=(0,o.iH)([{name:h}]),b=(e,t)=>te.value?a?.$toolUtil.isBackAuth(e,t):a?.$toolUtil.isAuth(e,t),Z=(e,t)=>te.value?a?.$toolUtil.isBackAuth(e,t):a?.$toolUtil.isFrontAuth(e,t),J=()=>{history.back()},L=(0,o.iH)([]),Q=(0,o.iH)(""),X=(0,o.iH)({}),ee=(0,o.iH)("first"),ae=()=>{a?.$http({url:`${w}/detail/${t.query.id}`,method:"get"}).then((e=>{Q.value=e.data.data.zuojiaxingming,L.value=e.data.data.zhaopian?e.data.data.zhaopian.split(","):[],X.value=e.data.data}))},te=(0,o.iH)(!1),le=()=>{t.query.centerType&&(te.value=!0),ae(),se(),he()},ie=(0,o.iH)(!1),oe=(0,o.iH)({}),se=()=>{a?.$toolUtil.storageGet("frontToken")&&a?.$http({url:"storeup/list",method:"get",params:{page:1,limit:1,type:41,refid:t.query.id,tablename:w,userid:a?.$toolUtil.storageGet("userid")}}).then((e=>{console.log(e.data.data.list.length),0!=e.data.data.list.length?(ie.value=!0,oe.value=e.data.data.list[0],console.log(111)):(ie.value=!1,oe.value={},console.log(222))}))},ne=e=>{if(41!=e||ie.value){if(-1==e&&ie.value){let e=[];e.push(oe.value.id),a?.$http({url:"storeup/delete",method:"post",data:e}).then((e=>{oe.value={},ie.value=!1,a?.$toolUtil.message("取消成功","success")}))}}else{let t={name:Q.value,picture:L.value[0],refid:X.value.id,type:e,tablename:w,userid:a?.$toolUtil.storageGet("userid")};a?.$http({url:"storeup/add",method:"post",data:t}).then((e=>{ie.value=!0,se(),a?.$toolUtil.message("关注成功","success")}))}},ue=(0,o.iH)({content:"",refid:t.query.id,userid:a?.$toolUtil.storageGet("userid"),nickname:a?.$toolUtil.storageGet("frontName"),avatarurl:a?.$toolUtil.storageGet("headportrait")?a?.$toolUtil.storageGet("headportrait"):""}),de=(0,o.iH)({content:[{required:!0,message:"请输入",trigger:"blur"}]}),ce=(0,o.iH)({page:1,limit:10,refid:t.query.id}),re=(0,o.iH)(["total","prev","pager","next","sizes"]),pe=(0,o.iH)([]),ve=(0,o.iH)(0),me=(0,o.iH)(null),_e=e=>{ce.value.limit=e,he()},ge=e=>{ce.value.page=e,he()},fe=()=>{ce.value.page=ce.value.page-1,he()},we=()=>{ce.value.page=ce.value.page+1,he()},he=()=>{a?.$http({url:`discuss${w}/list`,params:ce.value,method:"get"}).then((e=>{pe.value=e.data.data.list,ve.value=e.data.data.total}))},ke=()=>{let e="",t=[];e&&(t=e.split(","));for(var l=0;l<t.length;l++){var i=new RegExp(t[l],"g");ue.value.content.indexOf(t[l])>-1&&(ue.value.content=ue.value.content.replace(i,"**"))}me.value.validate((e=>{e&&a?.$http({url:`discuss${w}/add`,method:"post",data:ue.value}).then((e=>{a?.$toolUtil.message("评论成功","success",(()=>{ye(),he()}))}))}))},ye=()=>{me.value.resetFields()},be=()=>{u.push(`/index/${w}Add?id=${X.value.id}&&type=edit`)},xe=()=>{s.T.confirm(`是否删除此${h}？`,"提示",{confirmButtonText:"是",cancelButtonText:"否",type:"warning"}).then((()=>{a?.$http({url:`${w}/delete`,method:"post",data:[X.value.id]}).then((e=>{a?.$toolUtil.message("删除成功","success",(()=>{history.back()}))}))}))};return(0,l.bv)((()=>{le()})),(e,a)=>{const t=(0,l.up)("el-button"),o=(0,l.up)("el-breadcrumb-item"),s=(0,l.up)("el-breadcrumb"),n=(0,l.up)("mySwiper"),u=(0,l.up)("el-input"),w=(0,l.up)("el-form-item"),h=(0,l.up)("el-form"),Q=(0,l.up)("el-pagination"),ae=(0,l.up)("el-tab-pane"),le=(0,l.up)("el-tabs");return(0,l.wg)(),(0,l.iD)("div",d,[(0,l._)("div",c,[(0,l.Wm)(t,{class:"back_btn",onClick:J,type:"primary"},{default:(0,l.w5)((()=>[(0,l.Uk)("返回")])),_:1})]),(0,l._)("div",r,[(0,l.Wm)(s,{separator:">",class:"breadcrumb"},{default:(0,l.w5)((()=>[(0,l.Wm)(o,{class:"first_breadcrumb",to:{path:"/"}},{default:(0,l.w5)((()=>[(0,l.Uk)("首页")])),_:1}),((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(y.value,((e,a)=>((0,l.wg)(),(0,l.j4)(o,{class:"second_breadcrumb",key:a},{default:(0,l.w5)((()=>[(0,l.Uk)((0,i.zw)(e.name),1)])),_:2},1024)))),128))])),_:1})]),(0,l._)("div",p,[(0,l._)("div",v,[(0,l.Wm)(n,{data:L.value,type:3,loop:!1,navigation:!1,pagination:!0,paginationType:1,scrollbar:!1,slidesPerView:1,spaceBetween:20,autoHeight:!1,centeredSlides:!1,freeMode:!1,effectType:1,direction:e.horizontal,autoplay:!0,slidesPerColumn:1},{default:(0,l.w5)((a=>[(0,l._)("img",{style:{objectFit:"contain",width:"100%",height:"480px"},src:a.row?e.$config.url+a.row:""},null,8,m)])),_:1},8,["data","direction"])]),(0,l._)("div",_,[(0,l._)("div",g,[(0,l._)("div",f,(0,i.zw)(X.value.zuojiaxingming),1),ie.value?(0,l.kq)("",!0):((0,l.wg)(),(0,l.iD)("div",{key:0,class:"follow",onClick:a[0]||(a[0]=e=>ne(41))},k)),ie.value?((0,l.wg)(),(0,l.iD)("div",{key:1,class:"follow",onClick:a[1]||(a[1]=e=>ne(-1))},x)):(0,l.kq)("",!0)]),(0,l._)("div",$,[z,(0,l._)("div",U,(0,i.zw)(X.value.zuojiazhanghao),1)]),(0,l._)("div",C,[j,(0,l._)("div",H,(0,i.zw)(X.value.xingbie),1)]),(0,l._)("div",W,[q,(0,l._)("div",A,(0,i.zw)(X.value.dianhua),1)]),(0,l._)("div",D,[G,(0,l._)("div",T,(0,i.zw)(X.value.zuojiajianjie),1)]),(0,l._)("div",V,[!te.value||"未支付"!=X.value.ispay&&X.value.ispay||!Z("zuojia","支付")?(0,l.kq)("",!0):((0,l.wg)(),(0,l.j4)(t,{key:0,class:"approval_btn",onClick:e.payClick},{default:(0,l.w5)((()=>[(0,l.Uk)("支付")])),_:1},8,["onClick"])),te.value&&b("zuojia","修改")?((0,l.wg)(),(0,l.j4)(t,{key:1,class:"edit_btn",type:"primary",onClick:be},{default:(0,l.w5)((()=>[(0,l.Uk)("修改")])),_:1})):(0,l.kq)("",!0),te.value&&b("zuojia","删除")?((0,l.wg)(),(0,l.j4)(t,{key:2,class:"del_btn",type:"danger",onClick:xe},{default:(0,l.w5)((()=>[(0,l.Uk)("删除")])),_:1})):(0,l.kq)("",!0)])])]),(0,l.Wm)(le,{type:"border-card",modelValue:ee.value,"onUpdate:modelValue":a[3]||(a[3]=e=>ee.value=e),class:"tabs_view"},{default:(0,l.w5)((()=>[(0,l.Wm)(ae,{label:"评论",name:"commentActive"},{default:(0,l.w5)((()=>[(0,l._)("div",B,[(0,l.Wm)(h,{ref_key:"commentFormRef",ref:me,model:ue.value,class:"my_comment_form",rules:de.value},{default:(0,l.w5)((()=>[(0,l.Wm)(w,{prop:"content"},{default:(0,l.w5)((()=>[(0,l.Wm)(u,{class:"comment_inp",modelValue:ue.value.content,"onUpdate:modelValue":a[2]||(a[2]=e=>ue.value.content=e),type:"textarea",placeholder:"请输入评论内容"},null,8,["modelValue"])])),_:1})])),_:1},8,["model","rules"]),(0,l._)("div",F,[(0,l.Wm)(t,{class:"add_btn",type:"primary",onClick:ke},{default:(0,l.w5)((()=>[(0,l.Uk)("立即评论")])),_:1}),(0,l.Wm)(t,{class:"reset_btn",onClick:ye},{default:(0,l.w5)((()=>[(0,l.Uk)("重置")])),_:1})])]),(0,l._)("div",P,[((0,l.wg)(!0),(0,l.iD)(l.HY,null,(0,l.Ko)(pe.value,((a,t)=>((0,l.wg)(),(0,l.iD)("div",{class:"comment",key:t},[(0,l._)("div",S,[(0,l._)("div",N,[(0,l._)("div",I,[(0,l._)("img",{src:a.avatarurl?e.$config.url+a.avatarurl:"../../../assets/avatar.png",alt:""},null,8,K)]),(0,l._)("div",M,(0,i.zw)(a.nickname),1)]),(0,l._)("div",R,(0,i.zw)(a.addtime),1)]),(0,l._)("div",Y,[(0,l._)("div",E,(0,i.zw)(a.content),1),a.reply?((0,l.wg)(),(0,l.iD)("div",O," 回复："+(0,i.zw)(a.reply),1)):(0,l.kq)("",!0)])])))),128))]),(0,l.Wm)(Q,{background:"",layout:re.value.join(","),total:ve.value,"page-size":ce.value.limit,"prev-text":"上一页","next-text":"下一页","hide-on-single-page":!1,style:{border:"0px solid #eee",padding:"4px 0",margin:"10px 0 20px",whiteSpace:"nowrap",color:"#333",textAlign:"center",flexWrap:"wrap",background:"none",display:"flex",width:"100%",fontWeight:"500",justifyContent:"center"},onSizeChange:_e,onCurrentChange:ge,onPrevClick:fe,onNextClick:we},null,8,["layout","total","page-size"])])),_:1})])),_:1},8,["modelValue"])])}}},J=t(3744);const L=(0,J.Z)(Z,[["__scopeId","data-v-00e0fc7c"]]);var Q=L}}]);
//# sourceMappingURL=909.a4288157.js.map