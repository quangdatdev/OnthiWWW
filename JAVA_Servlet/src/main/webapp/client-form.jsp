<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Client Screen</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
  <div class="wrapper">
       
        <form action="CLNTPFController" method="post" class="form">
          <div class="wrap-screen-title">
            <h3 class="screen-title">Create client srceen</h3>
            <div class="message-error mb-10"></div>
          </div>
          <input type="hidden" name="action" value="saveClient">
            <div class="row">
                <div class="field">
                    <div class="field-title">
                        <label>Client Number:</label>
                        <div class="input-text">
                            <input type="text" name="CLNTNUM" required>
                        </div>
                    </div>
                </div>
               <div class="field">
                    <div class="field-title">
                        <label for="COUNTRY">Country:</label>
                         <div class="input-text">
                            <select name="COUNTRY" required>
                                <option disabled hidden selected>-----Select-------------</option>
                                <option value="V">Việt Nam</option>
                                <option value="T">Thái Lan</option>
                              </select>
                         </div> 
                    </div>
               </div>

               <div class="field">
                <div class="field-title">
                    <label for="BIOFDATE">Birth of Date:</label>
                    <div class="input-text">
                        <input type="text" id="startDateDisp" name="BIOFDATE" class="datepicker">
                    </div>
                </div>
                </div>
                
                
                        
            </div>
            <div class="row mt-10">
                <div class="field w-full">

                        <label>Client Name:</label>
                        <div class="input-text w-full">
                            <textarea col="10" name="CLNTNAME" required></textarea>
                        </div>
                </div>
            </div>
            <div class="row mt-10">
                <div class="field w-full">

                    <label for="ADDRESS">Address</label>
                    <div class="input-text w-full">
                        <textarea  name="ADDRESS" col="10" required></textarea>
                    </div>
                </div>
            </div>
            <div class="wrap-btn mt-10">
                <button>Submit</button>
            </div>
        </form>
    </div>
</body>
<script>
  $(function() {
    $("#startDateDisp").datepicker({
      dateFormat: 'dd/mm/yy',
      showButtonPanel: true
    });
  });
</script>


</html>