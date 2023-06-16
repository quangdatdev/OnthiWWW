<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Agent Screen</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
	<div class="wrapper">

        <form action="AGNTPFController" method="post" class="form">
            <div class="wrap-screen-title">
                <h3 class="screen-title">Create Agent Srceen</h3>
                <div class="message-error mb-10"></div>
            </div>
            <input type="hidden" name="action" value="saveAgent">    
            <div class="row">
                <div class="field">
                    <div class="field-title">
                        <label>Client Number:</label>
                        <div class="input-text">
                            <input type="text" name="CLNTNUM" value="${CLNTNUM}" disabled >
                             <input type="hidden" name="CLNTNUM" value="${CLNTNUM}" >
                        </div>
                    </div>
                </div>
                <div class="field">
                    <div class="field-title">
                        <label for="AGNTNUM">Agent Number</label>
                        <div class="input-text">
                            <input type="text" name="AGNTNUM" required>
                        </div>
                    </div>
                </div>
                <div class="field">
                    <div class="field-title">
                        <label for="CODUDATE">Compute Due Date</label>
                        <div class="input-text">
                            <input type="checkbox" name="CODUDATE" value="CODUDATE"/>
                        </div>
                    </div>
                </div>

                <div class="field">
                    <div class="field-title">
                        <label for="EXPIDATE">Expiry Date</label>
                        <div class="input-text">
                            <input type="text" id="startDateDisp" name="EXPIDATE" class="datepicker">
                        </div>
                    </div>
                </div>

                <div class="field">
                    <div class="field-title">
                        <label for="SERBRANCH">Servicing Branch</label>
                        <div class="input-text">
                            <select name="SERBRANCH" required>
                                <option disabled hidden selected>-----Select-------------</option>
                                <option value="HQ">Head Office</option>
                                <option value="HY">Hatyai Branch</option>
                              </select>
                        </div>
                    </div>
                </div>
                
            <!-- End row     -->
            </div>

            <div class="row mt-10">
                <div class="field w-full">

                    <label for="AGNTNAME">Agent name</label>
                    <div class="input-text w-full">
                        <textarea col="10" name="AGNTNAME" required></textarea>
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