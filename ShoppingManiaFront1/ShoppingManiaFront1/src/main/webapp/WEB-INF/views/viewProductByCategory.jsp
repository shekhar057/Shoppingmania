<%@ include file="header.jsp" %>
<br/><div class="container" style="background-image:url('resources/images/background1.jpg');">
 <h1><center><b>Products</b></center></h1>
<hr/> <div class="container row">
<c:forEach items="${proList}" var="pro">
  <div class="col-md-4">
    <div class="thumbnail"  >
      <a href="${e}viewProductDetails/${pro.id}">
        <img src="${e}resources/proImage/${pro.id}.jpg" alt="Lights" style="height:250px">
        <div class="caption">
          <center><h3><b>${pro.name}</b></h3></center>
        </div>
      </a>
    </div>
  </div></c:forEach>
</div>

</div><%@ include file="footer.jsp" %>
