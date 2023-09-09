<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Calculator</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <style>
            table, tr, td, th{

                padding: 10px;

                margin: auto;

                border: none;

            }
        </style>
    </head>
    <body class="container" style="background: #33ccff;">
        <header>
            <h1 align="center" class="display-3"><br>Simple Calculator</h1>
        </header>

        <main>
            <h3>
                <table align="center" >
                    <form action="index.jsp" >
                        <tr>
                        <br><br><br>
                        <td><input type="number" name="n1" style="background-color: #33ccff; color: white " placeholder="enter number" class="form-control"  aria-label="enter number" aria-describedby="basic-addon1" /></td>
                        <td>
                            <select name="opt" style="background-color: #33ccff; color: white " class="form-control"  >
                                <option  value="add"  >Add</option>
                                <option value="sub">Subtract</option>
                                <option value="mul">Multiply</option>
                                <option  value="div">Divide</option>
                        </td>
                        <td><input type="number" name="n2" style="background-color: #33ccff; color: white " placeholder="enter number" class="form-control"  aria-label="enter number" aria-describedby="basic-addon1" /></td>
                        <td> <button type="submit" class="btn btn-outline-dark btn-lg" > =</button> </td>

                        <td style="background-color: #33ccff; color: white "    >
                            <%--<%@include file="result.jsp" %>--%>
                            <%
                                try {
                                    String n1 = "";
                                    n1 += request.getParameter("n1");
                                    String n2 = "";
                                    n2 += request.getParameter("n2");

                                    //converting string to integer...
                                    int a = 0;
                                    a += Integer.parseInt(n1);
                                    int b = 0;
                                    b += Integer.parseInt(n2);

                                    String op = request.getParameter("opt");

                                    int c = 0;
                                    if (op.equals("add")) {
                                        c = a + b;
                                    } else if (op.equals("sub")) {
                                        c = a - b;
                                    } else if (op.equals("mul")) {
                                        c = a * b;
                                    } else if (op.equals("div")) {
                                        c = a / b;
                                    }
                                    out.print(c);
                                } catch (ArithmeticException e) {
                                    out.print("You Can't Divide it by Zero");
                                } catch (Exception e) {
                                    //out.print(e);
                                }

                            %>

                        </td>

                        </tr>

                    </form>


                </table>
            </h3>
        </main>

        <!-- Footer -->
        <footer class="page-footer font-small cyan darken-3">

            
            <div class="footer-copyright text-center py-3">
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <a href="https://github.com/owais666/" target="_blank"> GitHub</a>
                
                <a href="https://www.linkedin.com/in/awais-shaikh-89060a1b3/" target="_blank"> LinkedIn</a>
                
            </div>
            

        </footer>
        
    </body>
</html>
