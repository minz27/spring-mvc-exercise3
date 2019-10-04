package com.stackroute.keepnote.configurations;

import com.stackroute.keepnote.model.Note;
import com.stackroute.keepnote.repository.NoteRepository;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;

@Configuration
public class AppConfig {
    @Bean(value = "note")
    @Scope(value = "prototype")
    public Note getNote(){
        return new Note();
    }

    @Bean(value = "noteRepository")
    public NoteRepository getNoteRepository(){
        return new NoteRepository();
    }
}
