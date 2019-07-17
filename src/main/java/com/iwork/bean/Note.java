package com.iwork.bean;

import java.util.Date;

public class Note {
    private Integer noteId;

    private Integer noteCreateUser;

    private Date noteCreateTime;

    private String noteContext;

    public Integer getNoteId() {
        return noteId;
    }

    public void setNoteId(Integer noteId) {
        this.noteId = noteId;
    }

    public Integer getNoteCreateUser() {
        return noteCreateUser;
    }

    public void setNoteCreateUser(Integer noteCreateUser) {
        this.noteCreateUser = noteCreateUser;
    }

    public Date getNoteCreateTime() {
        return noteCreateTime;
    }

    public void setNoteCreateTime(Date noteCreateTime) {
        this.noteCreateTime = noteCreateTime;
    }

    public String getNoteContext() {
        return noteContext;
    }

    public void setNoteContext(String noteContext) {
        this.noteContext = noteContext == null ? null : noteContext.trim();
    }
}