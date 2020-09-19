<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html class="x-admin-sm">
    <head>
        <meta charset="utf-8">
        <title>欢迎页面-X-admin2.2</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <link rel="stylesheet" href="./css/font.css">
        <link rel="stylesheet" href="./css/xadmin.css">
        <script src="./lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="./js/xadmin.js"></script>
    </head>
    <body>

    <div id="app">
    <div id="view" v-if="!flag" v-cloak>
        <div class="x-nav">
          <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">演示</a>
            <a>
              <cite>导航元素</cite></a>
          </span>
          <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
            <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
        </div>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <form class="layui-form layui-col-space5">
                                <div class="layui-inline layui-show-xs-block">
                                    <input type="text" placeholder="请输入类型代码" autocomplete="off" class="layui-input">
                                </div>
                                <div class="layui-inline layui-show-xs-block">
                                    <button class="layui-btn"   lay-filter="sreach"><i class="layui-icon">&#xe615;</i></button>
                                </div>
                            </form>
                        </div>
                        <div class="layui-card-header">
                            <button class="layui-btn layui-btn-danger" onclick="delAll()"><i class="layui-icon"></i>批量删除</button>
                            <button class="layui-btn" @click='toAdd'><i class="layui-icon"></i>添加</button>
                        </div>
                        <div class="layui-card-body layui-table-body layui-table-main">
                            <table class="layui-table layui-form">
                                <thead>
                                  <tr>
                                    <th>
                                      <input type="checkbox" lay-filter="checkall" name="" lay-skin="primary">
                                    </th>
                                    <th>类型代码</th>
                                    <th>类型名称</th>
                                    <th>是否使用</th>
                                    <th>排序</th>
                                    <th>操作</th>
                                    </tr>
                                </thead>
                                <tbody>
                                  <tr :key='item.noAppointmentId' v-for='item in noAppointments'>
                                    <td>
                                      <input type="checkbox" name="id" value="1"   lay-skin="primary"> 
                                    </td>
                                    <td>{{item.noAppointCode}}</td>
                                    <td>{{item.noAppointName}}</td>
                                    <td>{{item.noAppointUse =='1'?"是":"否"}}</td>
                                    <td>{{item.noAppointSort}}</td>
                                    <td>
                                      <a href="" @click.prevent='toEdit(item.noAppointmentId)'  >
                                        <i class="layui-icon">&#xe642;</i>
                                      </a>
                                      <a href="" @click.prevent='toDelete(item.noAppointmentId)'>
                                        <i class="layui-icon">&#xe640;</i>
                                      </a>
                                    </td>
                                  </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="layui-card-body ">
                            <div class="page">
                                <div>
                                  <a class="prev" href="">&lt;&lt;</a>
                                  <a class="num" href="">1</a>
                                  <span class="current">2</span>
                                  <a class="num" href="">3</a>
                                  <a class="num" href="">489</a>
                                  <a class="next" href="">&gt;&gt;</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      </div>
      <div id="modify" v-if="flag" align="center" class="layui-fluid">
      <input type="hidden" id="noAppointmentId" v-model='noAppointmentId'/>
		<span v-text="errMsg" style="color: red;"></span>
      <div class="layui-row">
                <form class="layui-form">
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class="x-red">*</span>类型代码</label>
                        <div class="layui-input-inline">
                            <input type="text" id="noAppointCode" v-model='noAppointCode' required="" lay-verify="email" autocomplete="off" class="layui-input"></div>
                        <div class="layui-form-mid layui-word-aux">
						</div></div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class="x-red">*</span>类型名称</label>
                        <div class="layui-input-inline">
                            <input type="text" id="noAppointName" v-model='noAppointName' required="" lay-verify="nikename" autocomplete="off" class="layui-input"></div>
                    </div>
                 <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class="x-red">*</span>yong</label>
                        <div class="layui-input-inline">
                            <input type="text" id="noAppointUse" v-model='noAppointUse' required="" lay-verify="repass" autocomplete="off" class="layui-input"></div>
                    </div>
                    <!-- <div class="layui-form-item">
                        <label for="username" class="layui-form-label">
                            <span class="x-red">*</span>配送物流</label>
                        <div class="layui-input-inline">
                            <select id="shipping" name="shipping" class="valid">
                                <option value="shentong">申通物流</option>
                                <option value="shunfeng">顺丰物流</option></select>
                        </div>
                    </div> -->
                    
                    <div class="layui-form-item">
                        <label class="layui-form-label">
                            <span class="x-red">*</span>排序</label>
                        <div class="layui-input-inline">
                            <input type="text" id="noAppointSort" v-model='noAppointSort' required="" lay-verify="repass" autocomplete="off" class="layui-input"></div>
                    </div>
                    <div class="layui-form-item layui-form-text">
            			<label class="layui-form-label">描述</label>
            				<div class="layui-input-block">
                				<textarea placeholder="请输入内容" id="noAppointRemarks" v-model='noAppointRemarks' class="layui-textarea"></textarea>
            				</div>
        				</div>
                    <div class="layui-form-item">
                        <label for="L_repass" class="layui-form-label"></label>
                        <input type="button" class="layui-btn"  @click="modify" value="提交" /> <input type="button" class="layui-btn" @click="toBack" value="返回" /></div>
                </form>
              </div>
      </div>
      
      </div>

    <script type="text/javascript" src="js/vue.js"></script>
	<script type="text/javascript" src="js/axios.js"></script>
	<script type="text/javascript" src="myJs/viewNoAppointment.js"></script>
    </body>
</html></html>