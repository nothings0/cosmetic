<%@page import="ntbngoc.utils.API"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="ntbngoc.utils.API"%>
<div class="header">
    <div class="header_left">
      <img src="./assets/images/logo.png" />
    </div>
    <div class="header_center">
      <ul class="list">
        <li>
          <a href="product">STORE</a>
        </li>
        <li>
          <a href="#">MAKE UP</a>
        </li>
        <li>
          <a href="#">SKIN CARE</a>
        </li>
        <li>
          <a href="#">HAIR CARE</a>
        </li>
        <li>
          <a href="#">ABOUT</a>
        </li>
        <li>
          <a href="#">CONTACT</a>
        </li>
      </ul>
    </div>
    <div class="header_right">
      <div class="button_wrap">
        <c:if test="${user==null}"><a href="login">Login</a></c:if>
        
        <c:if test="${user!=null}">
            Hi
            <c:set var="s" value="${user.getName()}"></c:set>
            <%
                String name = (String)pageContext.getAttribute("s");
                out.print(API.getName(name));
            %>
        </c:if>
        <i class="fa-solid fa-cart-shopping"></i>
      </div>
    </div>
</div>