<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html">
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		
		<div class="navbar-header">
			<a class="navbar-brand" href="#">IT355-DZ-1960</a>
		</div>
		
		<ul class="nav navbar-nav">
		
			<li><a href="/IT355-DZ-NikolaTasic1960/">Početna</a></li>
		
			<li class="dropdown">
			
				<a class="dropdown-toggle" 
					data-toggle="dropdown" 
					href="#"> Proizvodi
					<span class="caret"></span>	
				</a>
			
				<ul class="dropdown-menu" role="menu">
					<li><a href="<spring:url value="/komponenta/dodaj"/>">Dodaj</a></li>
					<li><a href="<spring:url value="/komponenta/pretraga"/>">Pretraga</a></li>
				</ul>
			</li>
			
		</ul>	
		
	</div>
</nav>