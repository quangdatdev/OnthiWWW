<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inquiry Screen</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
<div class="wrapper">
        <form action="CLNTPFController" method="post" class="form">
          <div class="wrap-screen-title">
            <h3 class="screen-title">Inquiry Screen</h3>
            <div class="message-error mb-10"></div>
          </div>
          <label>Information Client</label>
            <div class="row mt-10">
                <div class="field">
                    <div class="field-title">
                        <label>Client Number</label>
                        <div class="input-text">
                            <input type="text" name="CLNTNUM" disabled value="${client.CLNTNUM}">
                        </div>
                    </div>
                </div>

                <div class="field">
                    <div class="field-title">
                        <label for="BIOFDATE">Birth of Date:</label>
                        <div class="input-text">
                            <input type="text" id="startDateDisp" name="BIOFDATE" class="datepicker" disabled value="${client.BIOFDATE}">
                        </div>
                    </div>
                </div>

               <div class="field">
                    <div class="field-title">
                        <label for="COUNTRY">Country:</label>
                         <div class="input-text">
                            <c:choose>
								<c:when test="${client.COUNTRY == V}">
									 <input type="text" name="COUNTRY" disabled value="Việt Nam">
								</c:when>
								<c:otherwise>
									<input type="text" name="COUNTRY" disabled value="Thái Lan">
								</c:otherwise>
							</c:choose>
                         </div> 
                    </div>
               </div>     
            </div>
            <div class="row mt-10">
                <div class="field w-full">

                        <label>Client Name:</label>
                        <div class="input-text w-full">
                            <textarea col="10" name="CLNTNAME" disabled >${client.CLNTNAME}</textarea>
                        </div>
                </div>
            </div>
            <div class="row mt-10">
                <div class="field w-full">

                    <label for="ADDRESS">Address</label>
                    <div class="input-text w-full">
                        <textarea  name="ADDRESS" col="10" disabled>${client.ADDRESS}</textarea>
                    </div>
                </div>
            </div>

            <!-- Agent -->
            <label>Information Agent</label>
            <div class="row mt-10">
                <div class="field">
                    <div class="field-title">
                        <label>Client Number</label>
                        <div class="input-text">
                            <input type="text" name="CLNTNUM" disabled value="${agent.CLNTNUM}">
                        </div>
                    </div>
                </div>
                <div class="field">
                    <div class="field-title">
                        <label for="AGNTNUM">Agent Number</label>
                        <div class="input-text">
                            <input type="text" name="AGNTNUM" disabled value="${agent.AGNTNUM}">
                        </div>
                    </div>
                </div>
                <div class="field">
                    <div class="field-title">
                        <label for="CODUDATE">Compute Due Date</label>
                        <div class="input-text">
                            <c:choose>
								<c:when test="${agent.CODUDATE == true}">
									<input type="checkbox" name="CODUDATE" disabled checked
										value="CODUDATE" />
								</c:when>
								<c:otherwise>
									<input type="checkbox" name="CODUDATE" disabled
										value="CODUDATE" />
								</c:otherwise>
							</c:choose>
                        </div>
                    </div>
                </div>
    
                <div class="field">
                    <div class="field-title">
                        <label for="EXPIDATE">Expiry Date</label>
                        <div class="input-text">
                            <input type="text" id="startDateDisp" name="EXPIDATE" class="datepicker" disabled value="${agent.EXPIDATE}">
                        </div>
                    </div>
                </div>
    
                <div class="field">
                    <div class="field-title">
                        <label for="SERBRANCH">Servicing Branch</label>
                        <div class="input-text">
                            <select name="SERBRANCH" disabled>
                                <c:choose>
									<c:when test="${agent.SERBRANCH == 'HQ'}">
										<option value="HQ" selected dia>Head Office</option>
										<option value="HY">Hatyai Branch</option>
									</c:when>
									<c:otherwise>
										<option value="HQ">Head Office</option>
										<option value="HY" selected>Hatyai Branch</option>
									</c:otherwise>
								</c:choose>
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
                        <textarea col="10" name="AGNTNAME" disabled>${agent.AGNTNAME}</textarea>
                    </div>
                </div>
            </div>
            <!-- End form -->
        </form>
    </div>
</div>

</body>
</html>