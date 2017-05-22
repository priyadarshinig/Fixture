<%@include file="index.jsp"%>
<style>
*{
  box-sizing:border-box;
  -moz-box-sizing:border-box;
}
body {
	background: url(//subtlepatterns.com/patterns/scribble_light.png);
  font-family: Calluna, Arial, sans-serif;
  min-height: 1000px;
}
.columns_2{
  -webkit-column-count:2;
  -moz-column-count:2;
  column-count:2;
}
.columns_3{
  -webkit-column-count:3;
  -moz-column-count:3;
  column-count:3;
}
.columns_4{
  -webkit-column-count:4;
  -moz-column-count:4;
  column-count:4;
}
.columns_5{
  -webkit-column-count:5;
  -moz-column-count:5;
  column-count:5;
}
#columns {
	-moz-column-gap: 5px;  
	-webkit-column-gap: 5px;
	column-gap: 5px;
  width: 90%;
	max-width: 1100px;
	margin: 50px auto;
}

div#columns figure {
	background: #fefefe;
	border: 2px solid #fcfcfc;
	box-shadow: 0 1px 2px rgba(34, 25, 25, 0.4);
	margin: 0 2px 15px;
	padding: 15px;
	padding-bottom: 10px;
	transition: all .7s ease-in-out;
  display: inline-block;
  column-break-inside: avoid;
}

div#columns figure img {
	width: 100%; height: auto;
	border-bottom: 1px solid #ccc;
	padding-bottom: 15px;
	margin-bottom: 5px;
}

div#columns figure figcaption {
  font-size: 2rem;
	color: #00000;
  line-height: 1.5;
}

div#columns small { 
  font-size: 2rem;
  float: right; 
  text-transform: uppercase;
  color: #00000;
} 

div#columns small a { 
  color: #00000; 
  text-decoration: none; 
  transition: .4s color;
}
div#columns figure:hover{
  padding: 5px;
}
a.button{
  padding:10px;
  background:salmon;
  margin:10px;
  display:block;
  text-align:center;
  color:#fff;
  transition:all 1s linear;
  text-decoration:none;
  text-shadow:1px 1px 3px rgba(0,0,0,0.3);
  border-radius:3px;
  border-bottom:3px solid #ff6536;
  box-shadow:1px 1px 3px rgba(0,0,0,0.3);
}
a.button:hover{
  background:#ff6536;
  border-bottom:3px solid salmon;
  color:#f1f2f3;
}
@media screen and (max-width: 750px) { 
  #columns { column-gap: 0px; }
  #columns figure { width: 100%; }
}
</style>
<h4>COMFORT BEDS</h4>
<div id="columns" class="columns_3">
  <figure>
  <img src="resources/product1.jpg">
	<figcaption>Bed with storage</figcaption>
    <span class="price">Rs.20,000</span>
    <a class="button" href="#">Buy Now</a>
	</figure>
	
	<figure>
  <img src="resources/bed without storage.jpg">
	<figcaption>Bed without storage</figcaption>
    <span class="price">Rs.13,000</span>
    <a class="button" href="#">Buy Now</a>
	</figure>
	
	<figure>
  <img src="resources/double-beds.jpg">
	<figcaption>Double Bed</figcaption>
    <span class="price">Rs.17,000</span>
    <a class="button" href="#">Buy Now</a>
	</figure>
	
	<figure>
	<img src="resources/Single Bed.jpg">
	<figcaption>Single Bed</figcaption>
    <span class="price">Rs.8000</span>
    <a class="button" href="#">Buy Now</a>
	</figure>
	
	<figure>
	<img src="resources/hydraulic-storage-beds.jpg">
	<figcaption>Hydraulic storage Bed</figcaption>
    <span class="price">Rs.31,000</span>
    <a class="button" href="#">Buy Now</a>
	</figure>
	
	<figure>
	<img src="resources/upholstered-beds.jpg">
	<figcaption>upholstered-beds</figcaption>
    <span class="price">Rs.33,000</span>
    <a class="button" href="#">Buy Now</a>
	</figure>
	
	<figure>
	<img src="resources/trundle-beds.jpg">
	<figcaption>trundle-beds</figcaption>
    <span class="price">Rs.10,000</span>
    <a class="button" href="#">Buy Now</a>
	</figure>
	
	<figure>
	<img src="resources/Bedroom_Kids bedroom _Bunk Beds.JPG">
	<figcaption>Bunk Beds</figcaption>
    <span class="price">Rs.22,000</span>
    <a class="button" href="#">Buy Now</a>
	</figure>
	
	<figure>
	<img src="resources/Bedroom_Kids bedroom _kids Beds.jpg">
	<figcaption>kids Beds</figcaption>
    <span class="price">Rs.6,000</span>
    <a class="button" href="#">Buy Now</a>
	</figure>
	</div>