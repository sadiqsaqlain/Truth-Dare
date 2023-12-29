<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Bootstrap Popup Example</title>
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
        function reloadPage() {
            location.reload(true); // Set to true to force a reload from the server
        }
    </script>
    
    
</head>
<body>

<div class="container text-center mt-5">
    
        <h1>Click here to view</h1>

    
    </div>

    <!-- Button to trigger the Bootstrap modal -->
    <div class="container text-center mt-5">
    
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
        Show_Name
    </button>
    
    </div>

    <!-- The Bootstrap Modal -->
    <div class="modal mt-4" id="myModal">
        <div class="modal-dialog mt-4">
            <div class="modal-content">

                <!-- Modal Header -->
                
                

                <!-- Modal Body -->
                <div class="modal-body container text-center">
                 <h3 style="color: threedhighlight;"><%=(String)request.getAttribute("nam")%></h3> 
                </div>

                <!-- Modal Footer -->
                <!-- <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div> -->
                
                
                
                <form action="tdin">
                
                <input type="hidden" value="<%=request.getAttribute("nam")%>" name="naam">
                
                <%for(String s:(String[])request.getAttribute("names")){%>
                <input type="hidden" value="<%=s%>" name="naams">
                <%}%>
                
                <table>
                <tr>
                <td>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-secondary" value="t" name="t">Truth</button>
                </div>
                </td>
                
                <td width="500">
                <div class="modal-footer">
                    <button type="submit" class="btn btn-secondary" value="d" name="t">Dare</button>
                </div>
                </td>
                
                </tr>
                </table>
              
                
                </form>
<button class="btn btn-primary" onclick="reloadPage()">Shuffle</button>
            </div>
        </div>
    </div>

</body>
</html>