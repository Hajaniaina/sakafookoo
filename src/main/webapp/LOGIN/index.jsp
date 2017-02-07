<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign-Up/Login</title>
  <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css/styleLog.css">

  
</head>

<body>
  
<div class="container">
  <!-- Trigger the modal with a button -->
  

  <!-- Modal -->
  <div class="modal fade" id="myModalLog" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
       <div class="form">
      
      <ul class="tab-group">
        <li class="tab active"><a href="#signup">Inscription</a></li>
        <li class="tab"><a href="#login">Connection</a></li>
      </ul>
      
      <div class="tab-content">
        <div id="signup">   
          <h1>Inscription</h1>
          
          <form action="InscriptionEtConnexion" method="GET">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                Nom<span class="req">*</span>
              </label>
              <input type="text" required  name="nom"/>
            </div>
        
            <div class="field-wrap">
              <label>
                Prenom<span class="req">*</span>
              </label>
              <input type="text"required  name="prenom"/>
            </div>
          </div>
           <div class="field-wrap">
            <label>
              Adresse<span class="req">*</span>
            </label>
            <input type="text"required  name="adresse"/>
          </div>
           <div class="field-wrap">
            <label>
              Num Tel<span class="req">*</span>
            </label>
            <input type="text"required  name="numtel"/>
          </div>
          <div class="field-wrap">
            <label>
              Adresse Mail<span class="req">*</span>
            </label>
            <input type="email"required  name="mail"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Mot de passe<span class="req">*</span>
            </label>
              <input type="password"required autocomplete="off" name="pass"/>
          </div>
        
           <input type="hidden"  name="singin" value="2"/>
          <button type="submit" class="button button-block"/>Valider</button>
          
          </form>

        </div>
        
        <div id="login">   
         
          <h1>Conexion</h1>
          <form action="InscriptionEtConnexion" method="GET">
          
            <div class="field-wrap">
            <label>
              Adresse Mail<span class="req">*</span>
            </label>
            <input type="email"required  name="mail"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Mot de passe<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="pass"/>
            <input type="hidden"  name="login" value="1"/>
          </div>
          
         
          
          <button class="button button-block"/>Ok</button>
          
          </form>

        </div>
        
      </div><!-- tab-content -->
      
 
      
</div> <!-- /form -->
      </div>
      
    </div>
  </div>
  
</div>
    <link rel="stylesheet" href="LOGIN/css/styleLog.css">


    <script src="LOGIN/js/index.js"></script>
    
</body>
</html>
