package com.iwork.service;

import com.iwork.bean.Note;
import com.iwork.mapper.NoteMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class NoteServiceImpl implements NoteService{

    @Resource
    NoteMapper noteMapper;

    @Override
    public List<Note> showAllNotes() {
        return noteMapper.showAllNotes();
    }

    @Override
    public void createNote(Note note) {
        noteMapper.createNote(note);
    }
}
