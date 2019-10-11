
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="Description" content="KeepNote.">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>

<title>KeepNote</title>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send
		 button. Handle errors like empty fields -->
		 <div class="modal fade" id="formModal" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
            <article class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="formModalLabel">New Note</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
					<table>
						<form id="addNote" action="saveNote" method="POST">
							<table>
							    <tr>
                             		<td><label>Note ID:</label></td>
                             		<td><input type="text" name="noteId"/></td>
                                </tr>
								<tr>
									<td><label>Note Title:</label></td>
									<td><input type="text" name="noteTitle"/></td>
								</tr>
								<tr>
									<td><label>Note Content:</label></td>
									<td><textarea name="noteContent"></textarea></td>
								</tr>
								<tr>
									<td><label>Note Status:</label></td>
									<td><input type="text" name="noteStatus" /></td>
								</tr>
								<tr><td></td><td><button type="submit" class="btn btn-primary">Save</button></td></tr>
							</table>
						</form>
					</table>
                </div>
              </div>
            </article>
	</div>
	<!--Update modal-->
	<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="formModalLabel" aria-hidden="true">
                <article class="modal-dialog" role="document">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title" id="updateModalLabel">Update Note</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                      </button>
                    </div>
                    <div class="modal-body">
    					<table>
    						<form id="updateNote" action="update" method="POST">
    							<table>
                                    <tr>
    									<td><label>Note ID:</label></td>
    									<td><input type="text" name="noteId"/></td>
    								</tr>
    								<tr>
    									<td><label>Note Title:</label></td>
    									<td><input type="text" name="noteTitle"/></td>
    								</tr>
    								<tr>
    									<td><label>Note Content:</label></td>
    									<td><textarea name="noteContent"></textarea></td>
    								</tr>
    								<tr>
    									<td><label>Note Status:</label></td>
    									<td><input type="text" name="noteStatus" /></td>
    								</tr>
    								<tr><td></td><td><button type="submit" class="btn btn-primary">Update</button></td></tr>
    							</table>
    						</form>
    					</table>
                    </div>
                  </div>
                </article>
    	</div>
	<section class="jumbotron text-center">
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#formModal">
			Add new note
		</button>
	</section>

	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
	<!-- <div class="jumbotron justify-content-center">
		<table id="notesTables">
			<tr>
				<th><h2>ID</h2></th><th><h2>Title</h2></th><th><h2>Content</h2></th><th><h2>Status</h2></th><th><h2>Created Date</h2></th>
			</tr>

			<tr>
				<c:forEach items="${noteList}" var="note">
				<td>${note.getNoteId()}</td>
				<td>${note.getNoteTitle()}</td>
				<td>${note.getNoteContent()}</td>
				<td>${note.getNoteStatus()}</td>
				<td>${note.getCreatedAt()}</td>
				<td>
				    <form action="delete" method="post">
                			<input type="hidden" id="noteId" name="noteId" value="${note.noteId}"/>
                			<button type="submit" class="btn btn-danger">Delete</button>
                    </form>
                </td>
                <td>
                    <form action="update" method="post">

				</c:forEach>
			</tr>

		</table>
	</div>
	--->
	<div class="container">
	    <c:forEach items="${noteList}" var="note">
	    <div class="row">

            <div class="card col-12" style="width: 18rem;">
                  <div class="card-body">
                              <h4 class="card-title">${note.getNoteId()} : ${note.getNoteTitle()}</h4>
                              <h5 class="card-title font-italic text-muted">${note.getNoteStatus()}</h5>
                              <h5 class="card-title">${note.getCreatedAt()}</h5>
                              <p class="card-text">${note.getNoteContent()}</p>
                              <hr />
                              <form action="delete" method="post">
                                   <input type="hidden" id="noteId" name="noteId" value="${note.noteId}"/>
                                   <button type="submit" class="btn btn-danger">Delete</button>
                              </form>
                  </div>
            </div>
        </div>
        </c:forEach>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>