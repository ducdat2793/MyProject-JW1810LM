<%-- 
    Document   : RightMenu
    Created on : Jul 24, 2019, 8:41:07 PM
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<aside class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
 <div class="side-nav-categories">
 <div class="block-title"> Danh mục sách </div>
 <!-- BEGIN BOX-CATEGORY -->
 <div class="box-content box-category">
 <ul>
 <li> <a href="/san-pham-khuyen-mai">Sách khuyến mại</a> 
 <ul>
 <li>...........</li>
 </ul>
 </li>

 <li> <a href="/san-pham-noi-bat">Sách nổi bật</a> </li>
 <li> <a href="/hoa-tuoi-chuc-mung">Sách mới</a> </li>
 <li> <a href="/hoa-ngay-20-10">Sách bán chạy</a> </li>
 <li> <a href="/hoa-ngay-08-3">Sách ngày 08/3</a> </li>
 

 <li> <a href="/qua-tang">Quà tặng</a> </li>
 </ul>
 </div>
 </div>
 <div class="block block-layered-nav hide_scroll">
 <div class="block-title"><span>Lọc sách theo :</span></div>
 <div class="block-content">
 <dl id="narrow-by-list">
 <dt class="even">Nhà văn nổi tiếng</dt>
 <dd class="even">
 <ol><li><a href='/vendors?query=Barcelona' title='Barcelona'>Nhà văn A</a></li>
 <li><a href='/vendors?query=Brooklyn' title='Brooklyn'>Nhà văn B</a></li>
 <li><a href='/vendors?query=Brussels' title='Brussels'>Nhà văn C</a></li>
 <li><a href='/vendors?query=Dandelion' title='Dandelion'>Nhà văn D</a></li>
 </dd>
 </dl>
 </div>
 </div>
 <div class="block block-tags">
 <div class="block-title"><span>Tags sản phẩm</span></div>
 <div class="block-content">
 <ul class="tags-list">
 <li><a href='/collections/all/hoa-tuoi' title='sach-moi'>Sách mới</a></li>
 <li><a href='/collections/all/qua-tang' title='qua-tang'>Quà tặng</a></li>
 </ul>
 </div>
 </div>
 <div class="block block-banner"><a href="#"><img src="images/block-banner.png"
alt="block-banner"></a></div>
</aside>
