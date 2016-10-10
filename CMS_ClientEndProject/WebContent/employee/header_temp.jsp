
<!-- Preloader section -->
<!-- <div class="preloader">
	<div class="sk-spinner sk-spinner-pulse"></div>
</div>
 -->
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Header section -->
<div class="navbar navbar-default navbar-static-top" role="navigation">
	<div class="container">

		<div class="navbar-header">
			<button class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-collapse">
				<span class="icon icon-bar"></span> <span class="icon icon-bar"></span>
				<span class="icon icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${pageContext.request.contextPath}">CMS</a>
		</div>
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-left">
				<li class="active smoothScroll"><a href="${pageContext.request.contextPath}">Home</a></li>
				<c:if test="${employee.e_id ne ''}">

					<li class="smoothScroll"><a
						href="${pageContext.request.contextPath}/ProcessServlet?pageType=allCustomers">Active
							Customers</a></li>
					<li class="smoothScroll"><a
						href="${pageContext.request.contextPath}/ProcessServlet?pageType=allinActiveCustomers">InActive
							Customers</a></li>
					<li class="smoothScroll"><a
						href="${pageContext.request.contextPath}/ControllerServlet?action=myWallet&e_id=${employee.e_id}">My
							Wallet</a></li>
					<li class="smoothScroll"><a
						href="${pageContext.request.contextPath}/employee/dashboard.jsp">Place
							Order</a></li>

				</c:if>
			</ul>

			<ul class="nav navbar-nav navbar-right">
				<c:choose>
					<c:when test="${employee.e_id ne ''}">

						<li class="smoothScroll"><a
							href="${pageContext.request.contextPath}/employee/account.jsp"><span
								class="glyphicon glyphicon-user"></span> ${employee.e_name}</a>
						<li class="smoothScroll"><a
							href="${pageContext.request.contextPath}/ControllerServlet?action=logout"><span
								class="glyphicon glyphicon-log-in"></span> Log out </a></li>
					</c:when>
					<c:otherwise>

						<li class="smoothScroll"><a
							href="${pageContext.request.contextPath}/pages/register.jsp"><span
								class="glyphicon glyphicon-user"></span> Sign up</a>
						<li class="smoothScroll"><a
							href="${pageContext.request.contextPath}/pages/login.jsp"><span
								class="glyphicon glyphicon-log-in"></span> Log in </a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>

	</div>
</div>
