package com.iwork.mapper;

import com.iwork.bean.Note;

import java.util.List;

public interface NoteMapper {
    List<Note> showAllNotes();

    void createNote(Note note);
}
