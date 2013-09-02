<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootstrap.css" />
		<link rel="stylesheet" type="text/css" href="assets/bootstrap/css/bootswatch.css" />
		<link rel="stylesheet" type="text/css" href="assets/css/mainpage.css">
		<title>Exercises Page</title>
	</head>
	<body>
		<div class="navbar navbar-default navbar-fixed-top">
			<div class="container">
		  		<div class="navbar-header">
		    		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
		    		</button>
		    		<a class="navbar-brand" href="#">Gym Advicer</a>
		  		</div>
		  		<div class="collapse navbar-collapse">
		    		<ul class="nav navbar-nav pull-right">
		      			<li><a href="login.jsp">Ввійти</a></li>
		      			<li><a href="#"><img src="assets/pictures/vkontakte_512x512.png" alt="vk"/></a></li>
		      			<li><a href="#"><img src="assets/pictures/facebook_512x512.png" alt="fb"/></a></li>
		      			<li><a href="#"><img src="assets/pictures/twitter_512x512.png" alt="google"/></a></li>
		      			<li><a href="#">Зареєструватись</a></li>
		    		</ul>
		  		</div><!--/.nav-collapse -->
			</div>
		</div><!-- navbar -->
		
		<div class="subnav subnav-fixed">
    		<ul class="nav nav-pills">
      			<li><a href="#trainings">Програми тренувань</a></li>
              	<li><a href="#exercise">Вправи</a></li>
              	<li><a href="#eat">Харчування</a></li>
              	<li>
              		<form class="navbar-search" action="">
            			<input type="text" class="search-query span2" placeholder="Search">
          			</form>
              	</li>
    		</ul>
  		</div>
  		
  		<div class="sidebar-background right">
	 		<div class="primary-sidebar-background"></div>
		</div>
		
		<div class="primary-sidebar right">
			<ul class="nav nav-list">
				<li class="">
	              	<h3>
	                  <span>Група мязів</span>
	              	</h3>
	              	<ul class="nav nav-list">
	              		<li>
	              			<a href="#">Руки <span class="badge">143</span></a>
	              		</li>
	              		<li>
	              			
	              			<a href="#">Ноги <span class="badge">223</span></a>
	              		</li>
	              		<li>
	              			
	              			<a href="#">Рама <span class="badge">98</span></a>
	              		</li>
	              	</ul>
	            </li>
				<li class="">
	              	<h3>
	                  <span>Тренажер</span>
	              	</h3>
	              	<ul class="nav nav-list">
	              		<li>
	              			<a href="#">Гантелі <span class="badge">443</span></a>
	              		</li>
	              		<li>
	              			
	              			<a href="#">Штанга <span class="badge">12</span></a>
	              		</li>
	              		<li>
	              			
	              			<a href="#">Тіло <span class="badge">664</span></a>
	              		</li>
	              	</ul>
	            </li>
				<li class="">
	              	<h3>
	                  <span>Складність</span>
	              	</h3>
	              	<ul class="nav nav-list">
	              		<li>
	              			<a href="#">Новачок <span class="badge">23</span></a>
	              		</li>
	              		<li>
	              			
	              			<a href="#">Продвинутий <span class="badge">67</span></a>
	              		</li>
	              		<li>
	              			
	              			<a href="#">Ветиран <span class="badge">12</span></a>
	              		</li>
	              	</ul>
	            </li>
				<li class="">
	              	<h3>
	                  <span>Тип</span>
	              	</h3>
	              	<ul class="nav nav-list">
	              		<li>
	              			<a href="#">На масу <span class="badge">45</span></a>
	              		</li>
	              		<li>
	              			
	              			<a href="#">Для сушки <span class="badge">33</span></a>
	              		</li>
	              	</ul>
	            </li>
				
			</ul>
		</div>
  		
  		 <div class="sidebar-background">
	 		<div class="primary-sidebar-background"></div>
		</div>
		
		<div class="primary-sidebar">
			<ul class="nav nav-list">
				<li class="">
	              	<a href="#">
	                  <span>Мої тренування</span>
	              	</a>
	            </li>
				<li class="">
	              	<a href="#">
	                  <span>Мої вправи</span>
	              	</a>
	            </li>
				<li class="">
	              	<a href="#">
	                  <span>Статистика</span>
	              	</a>
	            </li>
				<li class="">
	              	<a href="#">
	                  <span>Порад</span>
	              	</a>
	            </li>
				
			</ul>
		</div>
  		
  		<div class="inner-container">
  			<div class="hero-unit" id="exercise-cat">
			</div>
			
			<hr>
			
			<div class="row">
				<div class="col-md-12">
					
					<div class="row">
						<div class="col-md-4">
							<img width="200" height="200" src="http://dailyfit.ru/wp-content/uploads/2013/04/855_1-120x120.jpg" class="fl-l" alt="Муж. поз. 1" style="margin-right: 20px;">
						</div>
						<div class="col-md-5">
							<h2><a href="#">Вправа з гантелями</a></h2>
							<p>Група мязів: біцепс</p>
							<p>Тренажер: гантелі</p>
							<p>Рівень складності: підсніжник</p>
							<p>Тип: на масу</p>
						</div>
						<div class="col-md-3">
							<div class="btn-group-vertical">
								<button  type="button" class="btn btn-primary">Детальніше</button>
								<button type="button" class="btn btn-warning">Додати в вибрані</button>
								<button type="button" class="btn btn-success">Додати до тренування</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<hr>
			
			<div class="row">
				<div class="col-md-12">
					
					<div class="row">
						<div class="col-md-4">
							<img width="200" height="200" src="http://dailyfit.ru/wp-content/uploads/2013/04/855_1-120x120.jpg" class="fl-l" alt="Муж. поз. 1" style="margin-right: 20px;">
						</div>
						<div class="col-md-5">
							<h1><a href="#">Французький жим</a></h1>
							<p>Група мязів: руки</p>
							<p>Тренажер: лавка, гриф</p>
							<p>Рівень складності: дрищ</p>
							<p>Тип: типовий</p>
						</div>
						<div class="col-md-3">
							<div class="btn-group-vertical">
								<button  type="button" class="btn btn-primary">Детальніше</button>
								<button type="button" class="btn btn-warning">Додати в вибрані</button>
								<button type="button" class="btn btn-success">Додати до тренування</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<hr>
			
			<div class="row">
				<div class="col-md-9">
					<h1><a href="#">Вправа 1</a></h1>
					<div class="row">
						<div class="col-md-3">
							<img width="100" height="100" src="http://dailyfit.ru/wp-content/uploads/2013/04/855_1-120x120.jpg" class="fl-l" alt="Муж. поз. 1" style="margin-right: 20px;">
						</div>
						<div class="col-md-6">
							<p>Група мязів</p>
							<p>Тренажер</p>
							<p>Рівень складності</p>
							<p>Тип</p>
						</div>
						<div class="col-md-3">
							<div class="btn-group-vertical">
								<button  type="button" class="btn btn-primary">Детальніше</button>
								<button type="button" class="btn btn-warning">Додати в вибрані</button>
								<button type="button" class="btn btn-success">Додати до тренування</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<hr>
			
			<div class="row">
				<div class="col-md-9">
					<h1><a href="#">Вправа 1</a></h1>
					<div class="row">
						<div class="col-md-3">
							<img width="100" height="100" src="http://dailyfit.ru/wp-content/uploads/2013/04/855_1-120x120.jpg" class="fl-l" alt="Муж. поз. 1" style="margin-right: 20px;">
						</div>
						<div class="col-md-6">
							<p>Група мязів</p>
							<p>Тренажер</p>
							<p>Рівень складності</p>
							<p>Тип</p>
						</div>
						<div class="col-md-3">
							<div class="btn-group-vertical">
								<button  type="button" class="btn btn-primary">Детальніше</button>
								<button type="button" class="btn btn-warning">Додати в вибрані</button>
								<button type="button" class="btn btn-success">Додати до тренування</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<hr>
			
			<div class="row">
				<div class="col-md-9">
					<h1><a href="#">Вправа 1</a></h1>
					<div class="row">
						<div class="col-md-3">
							<img width="100" height="100" src="http://dailyfit.ru/wp-content/uploads/2013/04/855_1-120x120.jpg" class="fl-l" alt="Муж. поз. 1" style="margin-right: 20px;">
						</div>
						<div class="col-md-6">
							<p>Група мязів</p>
							<p>Тренажер</p>
							<p>Рівень складності</p>
							<p>Тип</p>
						</div>
						<div class="col-md-3">
							<div class="btn-group-vertical">
								<button  type="button" class="btn btn-primary">Детальніше</button>
								<button type="button" class="btn btn-warning">Додати в вибрані</button>
								<button type="button" class="btn btn-success">Додати до тренування</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<hr>
			
			<div class="row">
				<div class="col-md-9">
					<h1><a href="#">Вправа 1</a></h1>
					<div class="row">
						<div class="col-md-3">
							<img width="100" height="100" src="http://dailyfit.ru/wp-content/uploads/2013/04/855_1-120x120.jpg" class="fl-l" alt="Муж. поз. 1" style="margin-right: 20px;">
						</div>
						<div class="col-md-6">
							<p>Група мязів</p>
							<p>Тренажер</p>
							<p>Рівень складності</p>
							<p>Тип</p>
						</div>
						<div class="col-md-3">
							<div class="btn-group-vertical">
								<button  type="button" class="btn btn-primary">Детальніше</button>
								<button type="button" class="btn btn-warning">Додати в вибрані</button>
								<button type="button" class="btn btn-success">Додати до тренування</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<hr>
			
			<div class="row">
				<div class="col-md-9">
					<h1><a href="#">Вправа 1</a></h1>
					<div class="row">
						<div class="col-md-3">
							<img width="100" height="100" src="http://dailyfit.ru/wp-content/uploads/2013/04/855_1-120x120.jpg" class="fl-l" alt="Муж. поз. 1" style="margin-right: 20px;">
						</div>
						<div class="col-md-6">
							<p>Група мязів</p>
							<p>Тренажер</p>
							<p>Рівень складності</p>
							<p>Тип</p>
						</div>
						<div class="col-md-3">
							<div class="btn-group-vertical">
								<button  type="button" class="btn btn-primary">Детальніше</button>
								<button type="button" class="btn btn-warning">Додати в вибрані</button>
								<button type="button" class="btn btn-success">Додати до тренування</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<hr>
			
			<div class="row">
				<div class="col-md-9">
					<h1><a href="#">Вправа 1</a></h1>
					<div class="row">
						<div class="col-md-3">
							<img width="100" height="100" src="http://dailyfit.ru/wp-content/uploads/2013/04/855_1-120x120.jpg" class="fl-l" alt="Муж. поз. 1" style="margin-right: 20px;">
						</div>
						<div class="col-md-6">
							<p>Група мязів</p>
							<p>Тренажер</p>
							<p>Рівень складності</p>
							<p>Тип</p>
							
						</div>
						<div class="col-md-3">
							<div class="btn-group-vertical">
								<button  type="button" class="btn btn-primary">Детальніше</button>
								<button type="button" class="btn btn-warning">Додати в вибрані</button>
								<button type="button" class="btn btn-success">Додати до тренування</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<hr>
			
			<div class="row">
				<div class="col-md-9">
					<h1><a href="#">Вправа 1</a></h1>
					<div class="row">
						<div class="col-md-3">
							<img width="100" height="100" src="http://dailyfit.ru/wp-content/uploads/2013/04/855_1-120x120.jpg" class="fl-l" alt="Муж. поз. 1" style="margin-right: 20px;">
						</div>
						<div class="col-md-6">
							<p>Група мязів</p>
							<p>Тренажер</p>
							<p>Рівень складності</p>
							<p>Тип</p>
						</div>
						<div class="col-md-3">
							<div class="btn-group-vertical">
								<button  type="button" class="btn btn-primary">Детальніше</button>
								<button type="button" class="btn btn-warning">Додати в вибрані</button>
								<button type="button" class="btn btn-success">Додати до тренування</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<hr>
			
			<div class="row">
				<div class="col-md-9">
					<h1><a href="#">Вправа 1</a></h1>
					<div class="row">
						<div class="col-md-3">
							<img width="100" height="100" src="http://dailyfit.ru/wp-content/uploads/2013/04/855_1-120x120.jpg" class="fl-l" alt="Муж. поз. 1" style="margin-right: 20px;">
						</div>
						<div class="col-md-6">
							<p>Група мязів</p>
							<p>Тренажер</p>
							<p>Рівень складності</p>
							<p>Тип</p>
						</div>
						<div class="col-md-3">
							<div class="btn-group-vertical">
								<button  type="button" class="btn btn-primary">Детальніше</button>
								<button type="button" class="btn btn-warning">Додати в вибрані</button>
								<button type="button" class="btn btn-success">Додати до тренування</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<hr>
			
			<div class="row">
				<div class="col-md-9">
					<h1><a href="#">Вправа 1</a></h1>
					<div class="row">
						<div class="col-md-3">
							<img width="100" height="100" src="http://dailyfit.ru/wp-content/uploads/2013/04/855_1-120x120.jpg" class="fl-l" alt="Муж. поз. 1" style="margin-right: 20px;">
						</div>
						<div class="col-md-6">
							<p>Група мязів</p>
							<p>Тренажер</p>
							<p>Рівень складності</p>
							<p>Тип</p>
						</div>
						<div class="col-md-3">
							<div class="btn-group-vertical">
								<button  type="button" class="btn btn-primary">Детальніше</button>
								<button type="button" class="btn btn-warning">Додати в вибрані</button>
								<button type="button" class="btn btn-success">Додати до тренування</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<hr>
			
			<div class="row">
				<div class="col-md-9">
					<h1><a href="#">Вправа 1</a></h1>
					<div class="row">
						<div class="col-md-3">
							<img width="100" height="100" src="http://dailyfit.ru/wp-content/uploads/2013/04/855_1-120x120.jpg" class="fl-l" alt="Муж. поз. 1" style="margin-right: 20px;">
						</div>
						<div class="col-md-6">
							<p>Група мязів</p>
							<p>Тренажер</p>
							<p>Рівень складності</p>
							<p>Тип</p>
						</div>
						<div class="col-md-3">
							<div class="btn-group-vertical">
								<button  type="button" class="btn btn-primary">Детальніше</button>
								<button type="button" class="btn btn-warning">Додати в вибрані</button>
								<button type="button" class="btn btn-success">Додати до тренування</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<hr class="featurette-divider">
  		
  		<footer>
			<div class="container">
			<div class="row">
				<div class="col-md-4"> 
					<p class="text-muted credit">© Company Gym Advicer 2013</p>
				</div>
				<div class="col-md-4"> 
					<p class="text-muted credit">Follow us</p>
					<div class="row">
						<img src="assets/pictures/facebook_512x512.png" alt="google"/>
						<img src="assets/pictures/vkontakte_512x512.png" alt="google"/>
						<img src="assets/pictures/twitter_512x512.png" alt="google"/>				
					</div>
				</div>
				<div class="col-md-4"> 
					<p class="text-muted credit">Download app for android</p>
					<img src="assets/pictures/androidm.png" alt="androidapp"/>
				</div>			
			</div>
		</footer>
			
			
  		</div> <!-- container -->
  		
  		<!-- <footer>
			<div class="container">
			<div class="row">
				<div class="col-md-4"> 
					<p class="text-muted credit">© Company Gym Advicer 2013</p>
				</div>
				<div class="col-md-4"> 
					<p class="text-muted credit">Follow us</p>
					<div class="row">
						<img src="assets/pictures/facebook_512x512.png" alt="google"/>
						<img src="asets/pictures/vkontakte_512x512.png" alt="google"/>
						<img src="assets/pictures/twitter_512x512.png" alt="google"/>				
					</div>
				</div>
				<div class="col-md-4"> 
					<p class="text-muted credit">Download app for android</p>
					<img src="assets/pictures/androidm.png" alt="androidapp"/>
				</div>			
			</div>
		</footer> -->
	</body>
</html>