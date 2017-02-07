<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> 
<html class="no-js"> <!--<![endif]-->
<head>
    <title>MeatKing</title>

    <!-- meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">

    <!-- css -->
    <link rel="stylesheet" href="reserv/css/bootstrap.min.css">
    <link rel="stylesheet" href="reserv/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="reserv/css/font-awesome.min.css">
    <link rel="stylesheet" href="reserv/css/main.css">

    <!-- google font -->
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Kreon:300,400,700'>
    
    <!-- js -->
    <script src="js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
</head>
<!--==============================header=================================-->
    <jsp:include page="header.jsp" />

    <!--==============================Content=================================-->

<body data-spy="scroll" data-target="#navbar" data-offset="120" >
    <!--[if lt IE 7]>
        <p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    

    
    <!-- /#header -->

    
    <div id="reservation" class="light-wrapper">
        <section class="ss-style-top"></section>
        <div class="container inner">
            <h2 class="section-title text-center">Reservation</h2>
            <p class="lead main text-center">Reserver votre table &amp; Bonne appetit</p>
            <div class="row">
                <div class="col-md-6">
                    <form class="form form-table" method="post" name="">
                        <div class="form-group">
                            <h4>Completer tous les champs(Tous les champs sont obligatoires)</h4>
                        </div>

                        <div class="row">
                          <div class="col-lg-6 col-md-6 form-group">
                            <label class="sr-only" for="first_name1">Nom</label>
                            <input class="form-control hint" type="text" id="first_name1" name="first_name" placeholder="Nom" required="">
                          </div>
                          <div class="col-lg-6 col-md-6 form-group">
                            <label class="sr-only" for="last_name1">Prenom</label>
                            <input class="form-control hint" type="text" id="last_name1" name="last_name" placeholder="Prenom" required="">
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-lg-6 col-md-6 form-group">
                            <label class="sr-only" for="email1">Adresse Mail</label>
                            <input class="form-control hint" type="email" id="email1" name="email" placeholder="Email@domain.com" required="">
                          </div>
                          <div class="col-lg-6 col-md-6 form-group">
                            <label class="sr-only" for="phone1">Phone</label>
                            <input class="form-control hint" type="text" id="phone1" name="phone" placeholder="Phone" required="">
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-lg-6 col-md-6 form-group">
                            <label class="sr-only" for="reserv_date1">Date de reservation</label>
                            <input class="form-control datepicker hasDatepicker hint" type="text" id="reserv_date1" name="reserv_date" placeholder="Date de reservation" required="">
                          </div>
                          <div class="col-lg-6 col-md-6 form-group">
                            <label class="sr-only" for="numb_guests1">number of guests</label>
                            <input class="form-control hint" type="text" id="numb_guests1" name="numb_guests" placeholder="Number of guests" required="">
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-lg-6 col-md-6 form-group">
                            <label class="sr-only" for="alt_reserv_date1">Heure debut</label>
                            <input class="form-control datepicker hasDatepicker hint" type="text" id="alt_reserv_date1" name="alt_reserv_date" placeholder="Heure debu" required="">
                          </div>
                          <div class="col-lg-6 col-md-6 form-group">
                            <label class="sr-only" for="time1">Heure Fin</label>
                            <input class="form-control timepicker ui-timepicker-input hint" type="text" id="time1" name="time" placeholder="Heure Fin" required="" autocomplete="off">
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-lg-12 col-md-12">
                            <p>Vouz pouver reserver  votre table à distance apartir de ce site</p>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-lg-12 col-md-12">
                            <button type="submit" class="btn btn-danger btn-lg">Reserve!</button>
                          </div>
                        </div>
                      </form>
                </div><!-- col-md-6 -->
                <div class="col-md-5 col-md-offset-1">
                    
                    <h3><i class="fa fa-clock-o fa-fw"></i>Heures</h3>
                    <h4>Petit dejeuner</h4>
                    <p>Chaque jours: 7:30 AM - 11:30 AM<br></p>
                    <h4>Diner</h4>
                    <p>Chaque jours: 12:00 PM - 5:00 PM</p>
                    <h4>Dejeuner</h4>
                    <p>Chaque jours: 6:00 PM -  1:00 AM<br></p>


                </div><!-- col-md-6 -->
            </div>
            <!-- /.services --> 
        </div>
        <!-- /.container -->
        <section class="ss-style-bottom"></section>
    </div><!-- #reservation -->

     <footer id="footer" class="dark-wrapper">
        
        <!-- /.container -->
    </footer>
    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Kreon:300,400,700'>

    <script src="js/jquery-2.1.3.min.js"></script>
    <script src="js/jquery.actual.min.js"></script>
    <script src="js/jquery.scrollTo.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    
    <!--==============================header=================================-->
            <jsp:include page="LOGIN/index.jsp" />

        <!--==============================Content=================================-->
</body>
</html>