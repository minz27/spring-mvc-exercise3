
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->
	<table>
		<form id="addNote" action="saveNote" method="POST">
			<table>
				<tr>
					<td><label>Note ID:</label></td>
					<td><input type="number" name="noteId"/></td>
				</tr>
				<tr>
					<td><label>Note Title:</label></td>
					<td><input type="text" name="noteTitle"/></td>
				</tr>
				<tr>
					<td><label>Note Content:</label></td>
					<td><textarea name="noteContent">Enter your note...</textarea></td>
				</tr>
				<tr>
					<td><label>Note Status:</label></td>
					<td><input type="text" name="noteStatus" /></td>
				</tr>
				<tr><td></td><td><button>Send</button></td></tr>
			</table>
		</form>
	</table>
	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
	<table id="notesTables">
		<tr><th>ID</th><th>Title</th><th>Content</th><th>Status</th><th>Created Date</th></tr>
	</table>
</body>
</html>