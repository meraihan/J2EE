<%-- 
    Document   : _joinNow.jsp
    Created on : Feb 16, 2015, 1:18:00 AM
    Author     : Sayed Mahmud Raihan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form autocomplete="false" method="post" action="loginServlet"  name="login">
            <table>
                <tr>
                    <td colspan="2">
                        <strong><h1 style="font-wieght:bold; text-align:left; padding:20px 0px; color:FDA92A;">Login...</h1></strong>
                    </td>
                    <td>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Email</label>
                    </td>
                    <td>
                        <label><input type="email" name="email"  placeholder="john_lee@xyz.com" required/><br/></label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Password</label>
                    </td>
                    <td>
                        <input type="password" name="pass" placeholder="&bull;&bull;&bull;&bull;&bull;&bull;&bull;" required/><br/>
                    </td>
                </tr><tr>
                    <td>

                    </td>
                    <td>
                        <input type="submit" value="Login" id="greenBtn" /><br/>
                    </td>
                </tr>
            </table>
        </form>
        <form autocomplete="false" method="POST" action="register" name="registerServlet">
            <table>
                <tr>
                    <td colspan="2">
                        <strong><h1 style="font-wieght:bold; text-align:right; padding:20px 0px; color:FDA92A;">Register Now!!</h1></strong>
                    </td>
                    <td>

                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Email</label>
                    </td>
                    <td>
                        <label><input type="email" name="emailReg" placeholder="john_lee@xyz.com" required/><br/></label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Password</label>
                    </td>
                    <td>
                        <input type="password" name="passReg" placeholder="&bull;&bull;&bull;&bull;&bull;&bull;&bull;" required/><br/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Password Again</label>
                    </td>
                    <td>
                        <input type="password" name="passAgainReg" placeholder="&bull;&bull;&bull;&bull;&bull;&bull;&bull;" required/><br/>
                    </td>
                </tr>
                <!--	<tr>
                                <td>
                                <label>Gender</label>
                                </td>
                                <td>
                                <select>
                                        <option name="gender" value="male">Male</option>
                                        <option name="gender" value="female">Female</option>
                                </select><br/>
                                </td>
                        </tr>-->

                <tr>
                    <td>
                    </td>
                    <td>
                        <input type="submit" value="Register" id="greenBtn" /><br/>
                    </td>
                </tr>
            </table>

        </form>
    </body>
</html>
