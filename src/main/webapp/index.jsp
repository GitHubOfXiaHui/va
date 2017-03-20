<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>

<link href="dwz/themes/default/style.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="dwz/themes/css/core.css" rel="stylesheet" type="text/css" media="screen"/>
<link href="dwz/themes/css/print.css" rel="stylesheet" type="text/css" media="print"/>
<link href="dwz/uploadify/css/uploadify.css" rel="stylesheet" type="text/css" media="screen"/>
<!--[if IE]>
<link href="themes/css/ieHack.css" rel="stylesheet" type="text/css" media="screen"/>
<![endif]-->

<!--[if lt IE 9]><script src="dwz/js/speedup.js" type="text/javascript"></script><script src="dwz/js/jquery-1.11.3.min.js" type="text/javascript"></script><![endif]-->
<!--[if gte IE 9]><!--><script src="dwz/js/jquery-2.1.4.min.js" type="text/javascript"></script><!--<![endif]-->

<script src="dwz/js/jquery.cookie.js" type="text/javascript"></script>
<script src="dwz/js/jquery.validate.js" type="text/javascript"></script>
<script src="dwz/js/jquery.bgiframe.js" type="text/javascript"></script>
<script src="dwz/xheditor/xheditor-1.2.2.min.js" type="text/javascript"></script>
<script src="dwz/xheditor/xheditor_lang/zh-cn.js" type="text/javascript"></script>
<script src="dwz/uploadify/scripts/jquery.uploadify.js" type="text/javascript"></script>

<!-- 可以用dwz.min.js替换前面全部dwz.*.js (注意：替换时下面dwz.regional.zh.js还需要引入) -->
<script src="dwz/bin/dwz.min.js" type="text/javascript"></script>

<script src="dwz/js/dwz.regional.zh.js" type="text/javascript"></script>

<script type="text/javascript">
$(function(){
	DWZ.init("dwz/dwz.frag.xml", {
		loginUrl:"dwz/login_dialog.html", loginTitle:"登录",	// 弹出登录对话框
//		loginUrl:"dwz/login.html",	// 跳到登录页面
		statusCode:{ok:200, error:300, timeout:301}, //【可选】
		pageInfo:{pageNum:"pageNum", numPerPage:"numPerPage", orderField:"orderField", orderDirection:"orderDirection"}, //【可选】
		keys: {statusCode:"statusCode", message:"message"}, //【可选】
		ui:{hideMode:'offsets'}, //【可选】hideMode:navTab组件切换的隐藏方式，支持的值有’display’，’offsets’负数偏移位置的值，默认值为’display’
		debug:false,	// 调试模式 【true|false】
		callback:function(){
			initEnv();
			$("#themeList").theme({themeBase:"dwz/themes"}); // themeBase 相对于index页面的主题base路径
		}
	});
});
</script>

</head>
<body>
	<div id="layout">
		<div id="header">
			<div class="headerNav">
				<a class="logo" href="http://j-ui.com">标志</a>
				<ul class="nav">
					<li><a href="dwz/login.html">退出</a></li>
				</ul>
			</div>
		</div>

		<div id="leftside">
			<div id="sidebar_s">
				<div class="collapse">
					<div class="toggleCollapse"><div></div></div>
				</div>
			</div>
			<div id="sidebar">
				
				<div class="toggleCollapse"><h2>主菜单</h2><div>收缩</div></div>
				
				<div class="accordion" fillSpace="sidebar">
					<div class="accordionHeader">
						<h2><span>Folder</span>采购业务管理</h2>
					</div>
					<div class="accordionContent">
						<ul class="tree treeFolder">
							<li><a>新车采购</a>
								<ul>
									<li><a>新车采购需求表管理</a></li>
									<li><a>新车预采购需求表管理</a></li>
									<li><a>预采购匹配管理</a></li>
									<li><a>整车采购订单管理</a></li>
									<li><a>车辆采购需求表车源落实</a></li>
									<li><a>新车合格证、发票到达确认</a></li>
									<li><a>新车基本险投保确认</a></li>
									<li><a>新车提车确认</a></li>
									<li><a>新车加装确认</a></li>
									<li><a>新车采购入库申请</a></li>
									<li><a>新车采购入库审核</a></li>
									<li><a>新车上牌费用管理</a></li>
									<li><a>预采购资源预定</a></li>
									<li><a>预采购资源查看</a></li>
									<li><a>新车采购期间车源互换</a></li>
									<li><a>新车采购终止划拨预采购</a></li>
									<li><a>新车采购执行状态查询</a></li>
								</ul>
							</li>
							<li><a>长租旧车需求表</a>
								
							</li>
							<li><a>保险管理</a>
								<ul>
									<li><a>加保导入</a></li>
									<li><a>退保导入</a></li>
									<li><a>保险购买指令手工生成</a></li>
									<li><a>保险退保指令手工生成</a></li>
									<li><a>加保清单采购执行确认</a></li>
									<li><a>退保清单采购执行确认</a></li>
									<li><a>车船税管理</a></li>
									<li><a>车船税导入</a></li>
									<li><a>附加险续保指令生成</a></li>
									<li><a>保险购买指令导入</a></li>
								</ul>
							</li>
							<li><a>事故处理</a>
								<ul>
									<li><a>事故信息管理</a></li>
									<li><a>事故进保总公司审核</a></li>
									<li><a>总公司核算确认</a></li>
								</ul>
							</li>
							<li><a>车辆处置</a>
								<ul>
									<li><a>待处置车辆列表生成</a></li>
									<li><a>车管中心处置车收车确认</a></li>
									<li><a>处置车相关步骤完成确认</a></li>
									<li><a>内部处置入库申请</a></li>
									<li><a>内部处置入库审核</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="accordionHeader">
						<h2><span>Folder</span>车辆运营管理</h2>
					</div>
					<div class="accordionContent">
						<ul class="tree treeFolder">
							<li><a>车辆信息管理</a>
								<ul>
									<li><a>车辆档案修改</a></li>
									<li><a>车辆档案查看</a></li>
									<li><a>车辆状态管理</a></li>
									<li><a>借用车辆信息维护</a></li>
									<li><a>托管车辆信息维护</a></li>
									<li><a>车辆疑难记录管理</a></li>
									<li><a>GPS资产管理</a></li>
								</ul>
							</li>
							<li><a>车辆调拨</a>
								<ul>
									<li><a>车辆调拨指令下达</a></li>
									<li><a>车辆调拨指令发车确认</a></li>
									<li><a>车辆调拨指令收车确认</a></li>
								</ul>
							</li>
							<li><a>长租新合同发车</a></li>
							<li><a>长租合同结束收车</a></li>
							<li><a>年检业务</a>
								<ul>
									<li><a>车辆待年检清单查询</a></li>
									<li><a>车辆年检记录管理</a></li>
								</ul>
							</li>
							<li><a>维修业务</a></li>
							<li><a>违章管理</a>
								<ul>
									<li><a>违章记录管理</a></li>
									<li><a>违章记录查询</a></li>
									<li><a>违章收款自理处理</a></li>
								</ul>
							</li>
							<li><a>车辆日常运营工作记录管理</a>
								<ul>
									<li><a>非业务用车记录管理</a></li>
									<li><a>抢修记录管理</a></li>
									<li><a>长租临时替换记录</a></li>
									<li><a>车辆期间加装记录管理</a></li>
									<li><a>证件补办管理</a></li>
									<li><a>钥匙借用记录管理</a></li>
								</ul>
							</li>
							<li><a>油费管理</a>
								<ul>
									<li><a>油卡管理</a></li>
									<li><a>每月油卡加油记录管理</a></li>
								</ul>
							</li>
							<li><a>长租合同查询</a></li>
						</ul>
					</div>
					<div class="accordionHeader">
						<h2><span>Folder</span>驾驶员管理</h2>
					</div>
					<div class="accordionContent">
						
					</div>
					<div class="accordionHeader">
						<h2><span>Folder</span>成本管理</h2>
					</div>
					<div class="accordionContent">
						<ul class="tree treeFolder">
							<li><a>单一成本管理</a>
								<ul>
									<li><a>门店洗车费管理</a></li>
									<li><a>新车加装成本更新</a></li>
									<li><a>长租代收代付费用管理</a></li>
									<li><a>新车配件记录管理</a></li>
									<li><a>车管短租停车路桥费管理</a></li>
									<li><a>车辆异地驳运费用管理</a></li>
									<li><a>车辆加油记录管理</a></li>
									<li><a>年度规费费用管理</a></li>
									<li><a>年度规费导入</a></li>
								</ul>
							</li>
							<li><a>成本关联支付</a>
								<ul>
									<li><a>异地维修费用划拨确认</a></li>
									<li><a>车辆维修费用申报</a></li>
									<li><a>加装费用申报</a></li>
									<li><a>油卡加油费用申报</a></li>
									<li><a>长租代收代付费用申报</a></li>
									<li><a>短租带驾停车路桥费申报</a></li>
									<li><a>新车配件费用申报</a></li>
									<li><a>新车上牌费用申报</a></li>
									<li><a>补证费申报</a></li>
									<li><a>车辆年检费用申报</a></li>
									<li><a>车管短租停车路桥费申报</a></li>
									<li><a>门店洗车费申报</a></li>
									<li><a>车辆异地驳运费用申报</a></li>
									<li><a>保险费申报</a></li>
									<li><a>退保费申报</a></li>
									<li><a>其它保险汇总成本申报</a></li>
									<li><a>违章款支付申报</a></li>
									<li><a>油卡冲值(普票)</a></li>
									<li><a>现金加油费用申报</a></li>
									<li><a>年度规费费用申报</a></li>
								</ul>
							</li>
							<li><a>维修申报费用审核</a></li>
							<li><a>退保明细审核</a></li>
							<li><a>车辆折旧导入</a></li>
							<li><a>油卡充值核销费用申报审核</a></li>
							<li><a>加装费用申报审核</a></li>
							<li><a>违章申报费用审核</a></li>
						</ul>
					</div>
					<div class="accordionHeader">
						<h2><span>Folder</span>报表管理</h2>
					</div>
					<div class="accordionContent">
						<ul class="tree treeFolder">
							<li><a>查询报表</a>
								<ul>
									<li><a>有加保记录没有合同约定的保险清单</a></li>
									<li><a>新车采购汇总表</a></li>
									<li><a>旧车处置汇总表</a></li>
									<li><a>车辆加保记录汇总表</a></li>
									<li><a>车辆退保记录汇总表</a></li>
									<li><a>保险理赔记录汇总表</a></li>
									<li><a>车辆状态历史汇总表</a></li>
									<li><a>驾驶员工作记录汇总表</a></li>
									<li><a>车辆维修记录汇总表</a></li>
									<li><a>驾驶员基本工资调整表</a></li>
									<li><a>驾驶员加班费开票差异统计表</a></li>
									<li><a>历史在职驾驶员汇总表</a></li>
									<li><a>驾驶员入、离职变动表</a></li>
									<li><a>驾驶员岗位变动表</a></li>
									<li><a>长租带驾业务公里数及单车油耗统计</a></li>
									<li><a>车辆违章记录汇总表</a></li>
									<li><a>车辆利用率统计报表</a></li>
									<li><a>车辆状态统计报表</a></li>
									<li><a>车队结果报表</a></li>
									<li><a>各城市车辆养路费、规费、车船税表</a></li>
									<li><a>单车成本报表</a></li>
									<li><a>已审核成本科目明细表</a></li>
									<li><a>车辆维修成本-车龄报表</a></li>
									<li><a>月度门店车辆占用统计表</a></li>
									<li><a>供应商名录报表</a></li>
									<li><a>供应商交易统计报表</a></li>
									<li><a>异地维修费用划拨报表</a></li>
									<li><a>车辆预订报表</a></li>
									<li><a>替代车时间报表</a></li>
									<li><a>驾驶员与车辆所属分公司差异报表</a></li>
									<li><a>长租带驾合同陪驾</a></li>
									<li><a>车辆状态导出报表</a></li>
									<li><a>短租租车率报表</a></li>
									<li><a>有合同约定未加保清单</a></li>
									<li><a>运营申报明细汇总报表</a></li>
									<li><a>长租驾驶员业务报表</a></li>
								</ul>
							</li>
							<li><a>多维度汇总分析报表</a>
								<ul>
									<li><a>新车采购统计报表</a></li>
									<li><a>车辆处置统计报表</a></li>
									<li><a>租车率统计报表</a></li>
									<li><a>分公司单车维修统计报表</a></li>
									<li><a>各分公司车辆状态统计报表</a></li>
									<li><a>保险采购汇总表</a></li>
								</ul>
							</li>
						</ul>
					</div>
					<div class="accordionHeader">
						<h2><span>Folder</span>基础管理</h2>
					</div>
					<div class="accordionContent">
						<ul class="tree treeFolder">
							<li><a>权限管理</a>
								<ul>
									<li><a>用户修改自身密码</a></li>
									<li><a>变更所在组织节点</a></li>
								</ul>
							</li>
							<li><a>其它管理</a>
								<ul>
									<li><a>可信度&超定百分比设定</a></li>
								</ul>
							</li>
							<li><a>供应商信息管理</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="container">
			<div id="navTab" class="tabsPage">
				<div class="tabsPageHeader">
					<div class="tabsPageHeaderContent"><!-- 显示左右控制时添加 class="tabsPageHeaderMargin" -->
						<ul class="navTab-tab">
							<li tabid="main" class="main"><a href="javascript:;"><span><span class="home_icon">首页</span></span></a></li>
						</ul>
					</div>
					<div class="tabsLeft">left</div><!-- 禁用只需要添加一个样式 class="tabsLeft tabsLeftDisabled" -->
					<div class="tabsRight">right</div><!-- 禁用只需要添加一个样式 class="tabsRight tabsRightDisabled" -->
					<div class="tabsMore">more</div>
				</div>
				<ul class="tabsMoreList">
					<li><a href="javascript:;">首页</a></li>
				</ul>
				<div class="navTab-panel tabsPageContent layoutBox">
					<div class="page unitBox">
						
						<div class="accountInfo">
							<div class="alertInfo">
								<p><a href="https://code.csdn.net/dwzteam/dwz_jui/tree/master/doc" target="_blank" style="line-height:19px"><span>DWZ框架使用手册</span></a></p>
								<p><a href="http://pan.baidu.com/s/18Bb8Z" target="_blank" style="line-height:19px">DWZ框架开发视频教材</a></p>
							</div>
							<div class="right">
								<p style="color:red">DWZ官方微博 <a href="http://weibo.com/dwzui" target="_blank">http://weibo.com/dwzui</a></p>
							</div>
							<p><span>DWZ富客户端框架</span></p>
							<p>DWZ官方微博:<a href="http://weibo.com/dwzui" target="_blank">http://weibo.com/dwzui</a></p>
						</div>
						<div class="pageFormContent" layoutH="80">

<h2>DWZ系列开源项目:</h2>
<div class="unit"><a href="https://git.oschina.net/dwzteam/dwz_jui" target="_blank">dwz富客户端框架 - jUI</a></div>
<div class="unit"><a href="https://git.oschina.net/dwzteam/dwz_group" target="_blank">DWZ框架 + ThinkPHP 实现小组工作日志系统</a></div>
<div class="unit"><a href="https://code.csdn.net/dwzteam/dwz_ssh2" target="_blank">dwz4j企业级Java Web快速开发框架(Hibernate+Spring+Struts2) + jUI整合应用</a></div>
<div class="unit"><a href="https://code.csdn.net/dwzteam/dwz_springmvc" target="_blank">dwz4j企业级Java Web快速开发框架(Mybatis + SpringMVC) + jUI整合应用</a></div>
<div class="unit"><a href="https://code.csdn.net/dwzteam/dwz_thinkphp" target="_blank">ThinkPHP + jUI整合应用</a></div>
<div class="unit"><a href="https://code.csdn.net/dwzteam/dwz_zendframework" target="_blank">Zend Framework + jUI整合应用</a></div>
<div class="unit"><a href="http://www.yiiframework.com/extension/dwzinterface/" target="_blank">YII + jUI整合应用</a></div>

<a class="buttonActive" href="https://git.oschina.net/dwzteam/" target="_blank"><span>DWZ开源系列源码（oschina）</span></a>
<a class="button" href="https://github.com/dwzteam/" target="_blank"><span>DWZ开源系列源码（github）</span></a>
<a class="button" href="donation.html" target="dialog" height="400"><span style="color: red">捐赠 & DWZ学习视频</span></a>

<div class="divider"></div>
<h2>常见问题及解决:</h2>
<pre style="margin:5px;line-height:1.4em">
Error loading XML document: dwz.frag.xml
直接用IE打开index.html弹出一个对话框：Error loading XML document: dwz.frag.xml
原因：没有加载成功dwz.frag.xml。IE ajax laod本地文件有限制, 是ie安全级别的问题, 不是框架的问题。
解决方法：部署到apache 等 Web容器下。

如何精简JS：
	1) dwz.min.js替换全部dwz.*.js (注意：替换时下面dwz.regional.zh.js还需要引入
	2) demo index页面head中引入的几个第三方JS库也可以根据项目情况删除：
		js/jquery.cookie.js			用于cookie中纪录jUI主题theme，下次打开浏览器时纪录用户选择的主题风格
		js/jquery.validate.js		用于form表单验证
		js/jquery.bgiframe.js		用于解决IE6 dialog盖不住navTab页面中的select问题
		xheditor/xheditor-1.2.2.min.js	在线编辑器
		xheditor/xheditor_lang/zh-cn.js	在线编辑器国际化
		uploadify/scripts/jquery.uploadify.min.js	多文件上传
</pre>

<div class="divider"></div>
<h2>有偿服务(<span style="color:red;">公司培训，技术支持，解决使用jUI过程中出现的全部疑难问题</span>):</h2><br/>
<pre style="margin:5px;line-height:1.4em;">
合作电话：18600055221(杜权)
技术支持：17767167745(张慧华)
邮箱：support@jui.org
</pre>
<a class="button" href="http://code.csdn.net/groups/2155" target="_blank"><span>DWZ讨论组</span></a>

						</div>
					
					</div>
				</div>
			</div>
		</div>

	</div>

	<div id="footer">Copyright &copy; 2010 <a href="demo_page2.html" target="dialog">DWZ团队</a> 京ICP备15053290号-2</div>
</body>
</html>
