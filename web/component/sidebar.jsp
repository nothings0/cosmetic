<%@page contentType="text/html" pageEncoding="UTF-8"%>
<section id="sidebar">
    <a href="/cosmetic/home" class="brand">
        <i class='bx bxs-smile'></i>
        <span class="text">Kelly</span>
    </a>
    <ul class="side-menu top">
        <li class="${"/cosmetic/admin".equals(request.getRequestURI()) ? "active" : "heid"}">
            <a href="/cosmetic/admin">
                <i class='bx bxs-dashboard'></i>
                <span class="text">Dashboard</span>
            </a>
        </li>
        <li class="${request.getRequestURI() == "/cosmetic/admin/store" ? "active" : ""}">
            <a href="/cosmetic/admin/store">
                <i class='bx bxs-shopping-bag-alt' ></i>
                <span class="text">Store</span>
            </a>
        </li>
        <li class="${request.getRequestURI() == "/cosmetic/admin/invoice" ? "active" : ""}">
            <a href="/cosmetic/admin/invoice">
                <i class='bx bxs-doughnut-chart' ></i>
                <span class="text">Invoice</span>
            </a>
        </li>
    </ul>
    <ul class="side-menu">
        <li>
            <a href="../views/logout.jsp" class="logout">
                <i class='bx bxs-log-out-circle' ></i>
                <span class="text">Logout</span>
            </a>
        </li>
    </ul>
</section>