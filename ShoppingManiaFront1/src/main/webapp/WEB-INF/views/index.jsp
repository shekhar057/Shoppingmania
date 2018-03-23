
<%@ include file="header.jsp" %>
<div id="myCarousel" class="carousel slide carousel-fade " data-ride="carousel" >
 

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="resources/images/redmi.jpg" alt="images">
    </div>

    <div class="item">
      <img src="resources/images/c.2.jpg" alt="images">
    </div>

    <div class="item">
      <img src="resources/images/c.3.jpg" alt="images">
    </div>
    
    <div class="item">
      <img src="resources/images/c.5.jpg" alt="images">
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<div class="row container-fluid">
<div class="col-md-4">
    <div class="thumbnail"  >
      <a href="${e }viewProductDetails/16">
        <img src="${e}resources/proImage/16.jpg" alt="Lights" style="height:250px">
        <div class="caption">
          <p style="text-align:center;">Samsung Galaxy S8</p>
        </div>
      </a>
    </div>
  </div>
<div class="col-md-4">
    <div class="thumbnail"  >
      <a href="${e }viewProductDetails/3">
        <img src="${e}resources/proImage/3.jpg" alt="Maxi" style="height:250px">
        <div class="caption">
          <p style="text-align:center;">Women's Wear Maxi</p>
        </div>
      </a>
    </div>
  </div>
  
  <div class="col-md-4">
    <div class="thumbnail"  >
      <a href="${e }viewProductDetails/9">
        <img src="${e}resources/proImage/9.jpg" alt="Jeans" style="height:250px">
        <div class="caption">
          <p style="text-align:center;">Men's Wear Jeans</p>
        </div>
      </a>
    </div>
  </div>



<%@ include file="footer.jsp" %>