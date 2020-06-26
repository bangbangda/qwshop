// require('./bootstrap');
// window.Vue = require('vue');
// window.VueRouter = require('vue-router');

import Vue from 'vue'
import router from '@/plugins/router'
import Antd from 'ant-design-vue'
import {Icon} from 'ant-design-vue'
import App from '@/views/App'
import {post,get,put,deletes,toJson,isEmpty,apiHandle} from '@/plugins/http.js' // 请求方式中间件
import {api} from '@/plugins/api' // 后端API
import '@/plugins/function' // 辅助方法
import '@/plugins/style.css' // 公共样式



import 'babel-polyfill' // 兼容IE

Vue.prototype.$api=api;
Vue.prototype.$post=post;
Vue.prototype.$get=get;
Vue.prototype.$put=put;
Vue.prototype.$delete=deletes;
Vue.prototype.$toJson=toJson;
Vue.prototype.$isEmpty=isEmpty;
Vue.prototype.$apiHandle=apiHandle;

Vue.config.productionTip = false;

// 字体图标 iconFont 
let fontjs = require('@/plugins/font');
const AFont = Icon.createFromIconfontCN({
    scriptUrl: fontjs,
});
Vue.use(Antd);
Vue.component('a-font', AFont);


Vue.use(VueRouter)
const app = new Vue({
    el: '#app',
    components: { App },
    router,
});