package com.stackroute.keepnote.model;

import java.time.LocalDateTime;
import java.util.Date;

/*
 * The class "Note" will be acting as the data model for the Note data in the ArrayList.
 */
public class Note {
	private int noteId;
	private String noteTitle;
	private String noteContent;
	private String noteStatus;
	private LocalDateTime createdAt;

	/*
	 * This class should have five fields (noteId, noteTitle, noteContent,
	 * noteStatus and createdAt). This class should also contain the getters and
	 * setters for the fields. The value of createdAt should not be accepted from
	 * the user but should be always initialized with the system date
	 */

	public Note(int noteId, String noteTitle, String noteContent, String noteStatus) {
		this.noteId = noteId;
		this.noteTitle = noteTitle;
		this.noteContent = noteContent;
		this.noteStatus = noteStatus;
		this.createdAt = LocalDateTime.now();
	}

	public Note() {
	}

	/* All the getters/setters definition should be implemented here */

	public int getNoteId() {
		return noteId;

	}

	public void setNoteId(int intid) {
		this.noteId = intid;
	}

	public String getNoteTitle() {
		return noteTitle;
	}

	public void setNoteTitle(String string) {
		noteTitle = string;
	}

	public String getNoteContent() {
		return noteContent;
	}

	public void setNoteContent(String string) {
		noteContent = string;
	}

	public String getNoteStatus() {
		return noteStatus;
	}

	public void setNoteStatus(String string) {
		noteStatus = string;
	}

	public LocalDateTime getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(LocalDateTime localdatetime) {
		createdAt = localdatetime.now();
	}

	/* Override the toString() method */

	@Override
	public String toString() {
		return "Note{" +
				"noteId=" + noteId +
				", noteTitle='" + noteTitle + '\'' +
				", noteContent='" + noteContent + '\'' +
				", noteStatus='" + noteStatus + '\'' +
				", createdAt=" + createdAt +
				'}';
	}
}