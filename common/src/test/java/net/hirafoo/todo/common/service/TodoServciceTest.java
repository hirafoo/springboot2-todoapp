package net.hirafoo.todo.common.service;

import lombok.extern.slf4j.Slf4j;
import net.hirafoo.todo.model.Todo;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.beans.factory.annotation.Autowired;
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.jetbrains.annotations.Nullable;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;


import net.hirafoo.todo.service.TodoService;
import net.hirafoo.todo.mapper.TodoMapper;

import java.time.LocalDateTime;

@Slf4j
@SpringBootTest
class TodoServiceTest {
    @Autowired
    TodoService todoService;
    @MockBean
    TodoMapper mockTodoMapper;

    @Test
    void testTodoCreate() throws Exception {
        Todo todo = new Todo(
                1,
                "name",
                "desc",
                false,
                //LocalDateTime.of(2020, 1, 1, 11, 22, 33),
                0,
                0,
                0
        );
        assertEquals(todo.getName(), "name");
        log.info("getTerm {}", todo.getTerm());
        assertEquals(todo.getTerm(), 0);
        //assertEquals(todo.getTerm(), "2020-01-01T11:22:33");
    }
}
