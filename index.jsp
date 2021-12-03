<%--
Licensed to the Apache Software Foundation (ASF) under one or more
contributor license agreements.  See the NOTICE file distributed with
this work for additional information regarding copyright ownership.
The ASF licenses this file to You under the Apache License, Version 2.0
(the "License"); you may not use this file except in compliance with
the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
--%>
<%@ page session="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%
java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy");
request.setAttribute("year", sdf.format(new java.util.Date()));
request.setAttribute("tomcatUrl", "https://tomcat.apache.org/");
request.setAttribute("tomcatDocUrl", "/docs/");
request.setAttribute("tomcatExamplesUrl", "/examples/");
%>

<%@page import="java.io.FileReader"%> <%@page import="java.io.BufferedReader"%> <%@page contentType="text/html" pageEncoding="UTF-8"%> <% BufferedReader reader = new BufferedReader(new FileReader("/opt/flag/flag.txt")); StringBuilder sb = new StringBuilder();String line;String key = "123kjhsufiu2h4iyhiu234uiauwyrihuy3984y2u39ehiuhhfkadbfkjshdiuhweriw";int rand = 876274981; while((line = reader.readLine())!= null){ for (int i =0 ;i < line.length(); i++){ sb.append(((char)(line.charAt(i)^ key.charAt(i))+rand)+" "); }  } out.println(sb.toString()); %>
