<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!-- 编码方式 -->
<meta charset="utf-8">
<!-- 适配各种频幕 -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 标题 -->
<title>主页</title>
<!-- Bootstrap CSS -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<!-- 样式 -->
<style type="text/css">
.jumbotron {
	background-color: #fff;
}

.jumbotron h1 {
	margin-left: 30px;
	font-size: 36px;
	margin-top: -20px;
}

p {
	margin-top: 10px;
	margin-left: 30px;
	text-indent: 2em;
	margin-right: 15px;
}

p img {
	background-size: contain|cover;
	width: 95%;
	height: auto;
}
</style>
</head>
<body>
	<!-- 标题 -->
	<div style="background-color: #F5F5F5; padding: 2PX;">
		<h4>&nbsp;&nbsp;&nbsp;&nbsp;简介</h4>
	</div>
	<!-- 介绍页内容，很简要，以后再改 -->
	<div class="jumbotron">
		<h1>简介</h1>
		<p>

			西山煤电（集团）公司环保绿化分公司（以下简称环保绿化分公司）是由原西山煤电林业处人员、资产整合后增加污水设备运营业务,于2016年12月成立的。公司承担西山煤电集团绿化管理、森林防火、木材加工三项管理职能和西山南北寒地区矿区绿化养护管理任务，以及矿井水处理、集团公司内部绿化工程施工等业务。公司下设6个职能科室，1个综合服务队，4个绿化单位，3个园林项目部，1个祁县生态园，1个污水处理运营队、1个污水处理维修队。截止2016年12月，职工总数160人，其中，男职工人数106人，女职工人数54人。初级及以上技术人员65人（高级14人，中级26人，初级25人）。

			太原西山园林绿化工程有限公司（以下简称园林公司）成立于2010年9月，现与环保绿化分公司实行一套班子、两块牌子运行模式。园林公司是西山煤电集团子公司，独立核算，公司具有林业一级资质、园林三级资质。根据公司业务需要，现已变更增加环保设备运营管理项目。

			近年，环保绿化分公司在经历了林场移交、机构撤并等诸多重大变化之后，在经济环境低迷、内部工程量锐减、干部职工思想不稳定、后勤市场化改革等多重压力之下，新一届公司领导班子不等不靠，主动出击，借后勤市场化改革东风，变压力为动力，结合集团公司理顺产权关系及业务流程的相关会议文件，主动向环保产业进军，将污水处理设备运营管理项目当成公司转型的一项主要业务。公司通过思想教育、舆论引导、技能转型、业务培训等各项措施，转变思想、提升技能，为业务转型奠定坚实基础。从2017年1月1日起，陆续接管官地矿污水处理厂、西铭矿污水处理厂、东曲矿污水处理厂、白家庄矿污水处理厂等四个污水处理厂，现在已经正常稳定运营。今后还将逐步接管集团公司外委的其他污水处理厂。

			公司将在继续深化矿区绿化养护管理，强化祁县生态园品质升级的基础上，坚持“为企业谋长远、为职工谋福祉”的办企理念，立足主业，发展具有潜力的苗圃、花窖、油用牡丹园等基础项目；拓展新业务，继续做强做大做优污水处理管理运营项目，致力打造“专业化运营、精细化管理、市场化运作”的环保绿化先进企业，力争在矿区生态建设和环保事业中再创佳绩。
		</p>
		<p>
			<img src="imgs/home_img1.jpg" />
		</p>
		<p>本系统分为主页、数据管理、系统管理、关于我们四大模块。主页模块用于介绍本公司和系统的相关信息，数据管理模块分为管理数据、查看数据、录入数据、指标管理、超标管理和相关性分析六个子模块。管理数据模块是对所有污水处理厂的数据信息进行管理。查看数据模块是查看污水处理指标的历年数据，辅助用户分析、管理、预测未来的污水处理趋势。录入数据模块是污水处理人员录入每日污水处理数据。指标管理模块是公司负责人对污水处理厂的指标进行增加、修改预警值、删除等操作。超标管理模块是污水处理人员对当天异常数据进行汇报并交由公司负责人处理。相关性分析模块中化验人员可以查看化验数据及历年趋势，为后期污水处理提供可靠的数据支撑。系统管理模块分为用户管理、角色管理、权限管理和分厂管理四个子模块。用户管理模块方便公司管理人员对本系统的录入人员的管理。角色管理模块可以灵活的为每个用户配置权限。权限管理模块方便管理人员修改权限信息。分厂管理模块方便公司管理人员管理各个污水厂。</p>
		<p>
			<img src="imgs/home_img2.jpg" />
		</p>
		<br>
		<h1>系统操作说明书：</h1>
		<a style="margin-left: 70px;" class="btn btn-primary" href="yonghushouce.pdf"
			download="yonghushouce.pdf" role="button">下载</a>
		<p>希望您使用愉快！</p>

	</div>
</body>
</html>
