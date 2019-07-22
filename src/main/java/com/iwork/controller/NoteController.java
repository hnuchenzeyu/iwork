package com.iwork.controller;

import com.iwork.bean.Note;
import com.iwork.service.NoteService;
import com.mysql.cj.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
public class NoteController{

    @Resource
    NoteService noteService;

    /**
     * 显示该用户的所有笔记
     * @return
     */
    @RequestMapping("/showAllNotes")
    @ResponseBody
    public List<Note> showAllNotes(){
        //需要传入用户id
        //session

        return noteService.showAllNotes();
    }

    @RequestMapping(value = "/createNote")
    @ResponseBody
    public void createNote(@RequestBody Note note, HttpServletResponse response) throws IOException {
        //需要传入用户id
        //session
        int userId = 1001;

        int noteId = (int)(Math.random()*900 + 100);
        int noteCreateUser = userId;
        Date noteCreateTime = new Date();
        System.out.println("noteCreateTime:" + noteCreateTime);

        note.setNoteId(noteId);
        note.setNoteCreateUser(noteCreateUser);
        note.setNoteCreateTime(noteCreateTime);

        System.out.println("note:" + note.getNoteTitle());

        response.getWriter().print("111111");

        noteService.createNote(note);
    }

    @RequestMapping("deleteNote")
    @ResponseBody
    public void deleteNote(@RequestParam String noteId){

    }

}
