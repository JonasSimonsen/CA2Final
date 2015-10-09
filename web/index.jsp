<%-- 
    Document   : index
    Created on : 09-10-2015, 13:28:54
    Author     : jonassimonsen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="http://s3.amazonaws.com/codecademy-content/courses/ltp/css/bootstrap.css" rel="stylesheet">
        <link rel="stylesheet" href="main.css">  
        <script src ="js/respond.js"></script>
        <script src="//code.jquery.com/jquery-1.11.2.min.js"></script>
        <script>
            $(document).ready(function () {
                $("#all").click(findAllPersons);
            });
        </script>
    </head>
    <body>
        <div class="nav">
            <div class="container">
                <ul class="pull-left">
                    <li><a href="members.html">Who we are</a></li>
                </ul>
                <ul class="pull-right">
                    <li><a href="file/CA1-master.jar">Client</a></li>
                    <li><a href="documents/dokumentation.pdf">Documentation</a></li>
                    <li><a href="https://github.com/JonasSimonsen/CA1-master">Source code JAVA</a></li>
                    <li><a href="https://github.com/JonasSimonsen/CA1WEB">Source code WEB</a></li>
                </ul>
            </div>
        </div>
        <div class="jumbotron">
            <div class="container">
                <h1>Search for whatever you want</h1>
                <p><input type="text" class="form-control" id="textfield" placeholder="Search for person by phone number"></p>
                <div>
                    <p><button class="btn btn-primary" id ="all">All persons</button></p>
                </div>
            </div>
        </div>
        <div class="learn-more">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h3>Client</h3>
                        <p>With the client you are able to connect with other people. Just download the client and you are good to go just press the link.</p>
                        <p><a href="file/CA1-master.jar">Download the client</a></p>
                    </div>
                    <div class="col-md-4">
                        <h3>Documentation</h3>
                        <p>With the documentation you are able to see who did what. Please notice you need a username and password to access the documentation.</p>
                        <p><a href="documents/dokumentation.pdf">View the documentation</a></p>
                    </div>
                    <div class="col-md-4">
                        <h3>Source code</h3>
                        <p>If you whan to see how me made this possible you are free to take a look at the souce code on github just press the link.</p>
                        <p><a href="https://github.com/JonasSimonsen/CA1-master">View the source code JAVA</a></p>
                        <p><a href="https://github.com/JonasSimonsen/CA1WEB">View the souce code WEB</a></p>
                    </div>
                </div>
                <div src="javascript.js"></div>
            </div>
        </div>
    </body>
</html>