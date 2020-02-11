<%-- 
    Document   : Toolbar
    Created on : Jul 24, 2019, 8:48:28 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="toolbar">
 <div class="sorter">
 <div class="view-mode">
 <span title="Grid" class="button button-active button-grid"></span>
 <a href="?view=list" title="List" class="button button-list"></a>
 </div>
 </div>
 <div id="sort-by">
 <label class="left">Lọc theo: </label>
 <select name="sortBy" id="sortBy" class="selectBox" style="padding: 0px 10px; height:
30px;">
 <option selected value="default">Mặc định</option>
 <option value="alpha-asc">A &rarr; Z</option>
 <option value="alpha-desc">Z &rarr; A</option>
 <option value="price-asc" >Giá tăng dần</option>
 <option value="price-desc">Giá giảm dần</option>
 <option value="created-desc">Hàng mới nhất</option>
 <option value="created-asc">Hàng cũ nhất</option>
 </select>
 <a class="button-asc left" href="#" title="Set Descending Direction">
 <span class="glyphicon glyphicon-arrow-up"></span></a>
 </div>
</div>
