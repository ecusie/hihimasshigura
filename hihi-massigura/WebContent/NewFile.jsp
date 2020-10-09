<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Flat UI Pro</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Insert title here</title>
<!-- Loading Bootstrap -->
 <link href="<%= request.getContextPath() + "/css/vendor/bootstrap.min.css" %>" rel="stylesheet">

<!-- Loading Flat UI -->
<link href="<%= request.getContextPath() + "/css/flat-ui.css" %>" rel="stylesheet">

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
    <!--[if lt IE 9]>
      <script src="../../dist/js/vendor/html5shiv.js"></script>
      <script src="../../dist/js/vendor/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <style>
      body {
          padding-bottom: 20px;
          padding-top: 20px;
      }
      .navbar {
          margin-bottom: 20px;
      }
    </style>
    <div class="container">
      <h6>Forms</h6>
      <nav role="navigation" class="navbar navbar-default">
        <div class="navbar-header">
          <button data-target="#bs-example-navbar-collapse-2" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">Flat UI</a>
        </div>
        <div id="bs-example-navbar-collapse-2" class="collapse navbar-collapse">
          <form role="search" class="navbar-form navbar-left">
            <div class="form-group">
              <input type="text" placeholder="Search" class="form-control">
            </div>
            <button class="btn btn-default" type="submit">Submit</button>
          </form>
        </div>
      </nav>
      <nav role="navigation" class="navbar navbar-inverse navbar-embossed">
        <div class="navbar-header">
          <button data-target="#bs-example-navbar-collapse-3" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">Flat UI</a>
        </div>
        <div id="bs-example-navbar-collapse-3" class="collapse navbar-collapse">
          <form role="search" class="navbar-form navbar-left">
            <div class="form-group">
              <input type="text" placeholder="Search" class="form-control">
            </div>
            <button class="btn btn-default" type="submit">Submit</button>
          </form>
        </div>
      </nav>
      <nav role="navigation" class="navbar navbar-default navbar-lg">
        <div class="navbar-header">
          <button data-target="#bs-example-navbar-collapse-4" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">Flat UI</a>
        </div>
        <div id="bs-example-navbar-collapse-4" class="collapse navbar-collapse">
          <form role="search" class="navbar-form navbar-left">
            <div class="form-group">
              <input type="text" placeholder="Search" class="form-control">
            </div>
            <button class="btn btn-default" type="submit">Submit</button>
          </form>
        </div>
      </nav>
      <nav role="navigation" class="navbar navbar-inverse navbar-embossed navbar-lg">
        <div class="navbar-header">
          <button data-target="#bs-example-navbar-collapse-5" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">Flat UI</a>
        </div>
        <div id="bs-example-navbar-collapse-5" class="collapse navbar-collapse">
          <form role="search" class="navbar-form navbar-left">
            <div class="form-group">
              <input type="text" placeholder="Search" class="form-control">
            </div>
            <button class="btn btn-default" type="submit">Submit</button>
          </form>
        </div>
      </nav>
      <br>
      <h6>Buttons</h6>
      <nav role="navigation" class="navbar navbar-default">
        <div class="navbar-header">
          <button data-target="#bs-example-navbar-collapse-6" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">Flat UI</a>
        </div>
        <div id="bs-example-navbar-collapse-6" class="collapse navbar-collapse">
          <button class="btn btn-default navbar-btn" type="button">Sign in</button>
          <button class="btn btn-default navbar-btn btn-sm" type="button">Sign in</button>
          <button class="btn btn-default navbar-btn btn-xs" type="button">Sign in</button>
        </div>
      </nav>
      <nav role="navigation" class="navbar navbar-inverse navbar-embossed">
        <div class="navbar-header">
          <button data-target="#bs-example-navbar-collapse-7" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">Flat UI</a>
        </div>
        <div id="bs-example-navbar-collapse-7" class="collapse navbar-collapse">
          <button class="btn btn-default navbar-btn" type="button">Sign in</button>
          <button class="btn btn-default navbar-btn btn-sm" type="button">Sign in</button>
          <button class="btn btn-default navbar-btn btn-xs" type="button">Sign in</button>
        </div>
      </nav>
      <nav role="navigation" class="navbar navbar-default navbar-lg">
        <div class="navbar-header">
          <button data-target="#bs-example-navbar-collapse-8" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">Flat UI</a>
        </div>
        <div id="bs-example-navbar-collapse-8" class="collapse navbar-collapse">
          <button class="btn btn-default navbar-btn" type="button">Sign in</button>
          <button class="btn btn-default navbar-btn btn-sm" type="button">Sign in</button>
          <button class="btn btn-default navbar-btn btn-xs" type="button">Sign in</button>
        </div>
      </nav>
      <nav role="navigation" class="navbar navbar-inverse navbar-embossed navbar-lg">
        <div class="navbar-header">
          <button data-target="#bs-example-navbar-collapse-9" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">Flat UI</a>
        </div>
        <div id="bs-example-navbar-collapse-9" class="collapse navbar-collapse">
          <button class="btn btn-default navbar-btn" type="button">Sign in</button>
          <button class="btn btn-default navbar-btn btn-sm" type="button">Sign in</button>
          <button class="btn btn-default navbar-btn btn-xs" type="button">Sign in</button>
        </div>
      </nav>
      <br>
      <h6>Text</h6>
      <nav role="navigation" class="navbar navbar-default">
        <div class="navbar-header">
          <button data-target="#bs-example-navbar-collapse-10" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">Flat UI</a>
        </div>
        <div id="bs-example-navbar-collapse-10" class="collapse navbar-collapse">
          <p class="navbar-text">Signed in as Mark Otto</p>
        </div>
      </nav>
      <nav role="navigation" class="navbar navbar-inverse navbar-embossed">
        <div class="navbar-header">
          <button data-target="#bs-example-navbar-collapse-11" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">Flat UI</a>
        </div>
        <div id="bs-example-navbar-collapse-11" class="collapse navbar-collapse">
          <p class="navbar-text">Signed in as Mark Otto</p>
        </div>
      </nav>
      <nav role="navigation" class="navbar navbar-default navbar-lg">
        <div class="navbar-header">
          <button data-target="#bs-example-navbar-collapse-12" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">Flat UI</a>
        </div>
        <div id="bs-example-navbar-collapse-12" class="collapse navbar-collapse">
          <p class="navbar-text">Signed in as Mark Otto</p>
        </div>
      </nav>
      <nav role="navigation" class="navbar navbar-inverse navbar-embossed navbar-lg">
        <div class="navbar-header">
          <button data-target="#bs-example-navbar-collapse-13" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">Flat UI</a>
        </div>
        <div id="bs-example-navbar-collapse-13" class="collapse navbar-collapse">
          <p class="navbar-text">Signed in as Mark Otto</p>
        </div>
      </nav>
      <br>
      <h6>Non-nav links</h6>
      <nav role="navigation" class="navbar navbar-default">
        <div class="navbar-header">
          <button data-target="#bs-example-navbar-collapse-14" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">Flat UI</a>
        </div>
        <div id="bs-example-navbar-collapse-14" class="collapse navbar-collapse">
          <p class="navbar-text navbar-right">Signed in as <a class="navbar-link" href="#">Mark Otto</a></p>
        </div>
      </nav>
      <nav role="navigation" class="navbar navbar-inverse navbar-embossed">
        <div class="navbar-header">
          <button data-target="#bs-example-navbar-collapse-15" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">Flat UI</a>
        </div>
        <div id="bs-example-navbar-collapse-15" class="collapse navbar-collapse">
          <p class="navbar-text navbar-right">Signed in as <a class="navbar-link" href="#">Mark Otto</a></p>
        </div>
      </nav>
      <nav role="navigation" class="navbar navbar-default navbar-lg">
        <div class="navbar-header">
          <button data-target="#bs-example-navbar-collapse-16" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">Flat UI</a>
        </div>
        <div id="bs-example-navbar-collapse-16" class="collapse navbar-collapse">
          <p class="navbar-text navbar-right">Signed in as <a class="navbar-link" href="#">Mark Otto</a></p>
        </div>
      </nav>
      <nav role="navigation" class="navbar navbar-inverse navbar-embossed navbar-lg">
        <div class="navbar-header">
          <button data-target="#bs-example-navbar-collapse-17" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">Flat UI</a>
        </div>
        <div id="bs-example-navbar-collapse-17" class="collapse navbar-collapse">
          <p class="navbar-text navbar-right">Signed in as <a class="navbar-link" href="#">Mark Otto</a></p>
        </div>
      </nav>

      <div class="row">
              <div class="col-md-12">
                  <nav class="navbar navbar-inverse" role="navigation">
                      <div class="navbar-header">
                         <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse-01">
                             <span class="sr-only">Toggle navigation</span>
                             <span class="icon-bar"></span>
                             <span class="icon-bar"></span>
                             <span class="icon-bar"></span>
                          </button>
                      </div>
                      <div class="collapse navbar-collapse navbar-collapse-01">
                            <ul class="nav navbar-nav navbar-left">
                              <li class="active"><a href="index.html">Home</a></li>
                              <li class="dropdown">
                                <a href="#fakelink" class="dropdown-toggle" data-toggle="dropdown">
                                  Club/Plan Setup
                                  <span class="caret"></span>
                                </a>
                                    <ul class="dropdown-menu">
                                      <li><a href="#fakelink">Configure Clubs</a></li>
                                      <li> <a href="#fakelink">Configure Feature Plans</a></li>
                                    </ul> <!-- /Sub menu -->
                              </li>
                              <li class="dropdown">
                                   <a href="#fakelink" class="dropdown-toggle" data-toggle="dropdown">
                                      Promo Setup
                                      <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                      <li><a href="#fakelink">View Promo List</a></li>
                                      <li> <a href="#fakelink">Add Edit Promo</a></li>
                                      <li><a href="#fakelink">Promo Details</a></li>
                                    </ul> <!-- /Sub menu -->
                              </li>
                              <li class="dropdown">
                                   <a href="#fakelink" class="dropdown-toggle" data-toggle="dropdown">
                                      Reporting
                                      <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                      <li><a href="#fakelink">Analytics</a></li>
                                      <li> <a href="#fakelink">Sales Report</a></li>
                                    </ul> <!-- /Sub menu -->
                              </li>
                              <li><a href="#fakelink">Branding</a></li>
                              <li><a href="#fakelink">Sales Customization</a></li>
                              <li><a href="#fakelink">Tools</a></li>
                            </ul>
                     </div><!--/.nav -->
                     </nav>
              </div>
        </div>

    </div>
    <!-- /.container -->


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

    <!-- Bootstrap 4 requires Popper.js -->
    <script src="https://unpkg.com/popper.js@1.14.1/dist/umd/popper.min.js" crossorigin="anonymous"></script>

    <script src="<%= request.getContextPath() + "/js/flat-ui.js" %>"></script>

    <script src="<%= request.getContextPath() + "/js/application.js" %>"></script>


  </body>
</html>
