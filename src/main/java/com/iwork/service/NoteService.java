package com.iwork.service;

import com.iwork.bean.Note;

import java.util.List;

public interface NoteService {

    List<Note> showAllNotes();

    void createNote(Note note);
}
