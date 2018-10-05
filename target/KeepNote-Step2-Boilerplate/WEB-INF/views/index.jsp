<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>Keep-Board</title>
<style>
        tr:first-child{
            font-weight: bold;
            background-color: #C6C9C4;
        }
    </style>
</head>

<body>
    <!-- Create a form which will have text boxes for Note title, content and status along with a Add
         button. Handle errors like empty fields -->
         <form:form method="post" modelAttribute="note">
         <table>
                    <tr>
                         <td><label for="noteId">Note Id: </label> </td>
                         <td><form:input path="noteId" id="noteId"/></td>
                         <td><form:errors path="noteId" /></td>
                    </tr>
                    <tr>
                        <td><label for="noteTitle">Note Title: </label> </td>
                        <td><form:input path="noteTitle" id="noteTitle"/></td>
                        <td><form:errors path="noteTitle" /></td>
                    </tr>

                    <tr>
                        <td><label for="noteContent">Note Content: </label> </td>
                        <td><form:input path="noteContent" id="noteContent"/></td>
                        <td><form:errors path="noteContent" /></td>
                    </tr>

                    <tr>
                        <td><label for="noteStatus">Note Status: </label> </td>
                        <td><form:input path="noteStatus" id="noteStatus"/></td>
                        <td><form:errors path="noteStatus" /></td>
                    </tr>
                    <tr>
                                <td></td>
                                <td><form:button formaction="add">Submit</form:button></td>
                             </tr>
                     <tr>
                                        <td></td>
                                  <td><form:button formaction="delete">Delete</form:button></td>
                                     </tr>
            <tr>
                                   <td></td>
                                    <td><form:button formaction="update">Update</form:button></td>
                                         </tr>
         </table>
</form:form>


    <!-- display all existing notes in a tabular structure with Title,Content,Status, Created Date and Action -->
    <h2>List of Notes ${result}</h2>
       <table>
            <table border="1" width="90%">
           <tr>
               <td>Note ID</td><td>Note Title</td><td>Content</td><td>Status</td>Time</td>
           </tr>
           <c:forEach items="${notes}" var="note">
               <tr>
               <td>${note.noteId}</td>
               <td>${note.noteTitle}</td>
               <td>${note.noteContent}</td>
               <td>${note.noteStatus}</td>
               <td>${note.localDate}</td>
               </tr>
           </c:forEach>
       </table>
</body>

</html>