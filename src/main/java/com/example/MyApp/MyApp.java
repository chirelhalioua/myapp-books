package com.example.MyApp;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.example.MyApp.model.Book;
import com.example.MyApp.repository.BookRepository;

@SpringBootApplication
public class MyApp {

    public static void main(String[] args) {
        SpringApplication.run(MyApp.class, args);
    }

    @Bean
public CommandLineRunner initData(BookRepository bookRepository) {
    return args -> {
        bookRepository.save(new Book("Spring Boot Basics", "John Doe"));
        bookRepository.save(new Book("Java Fundamentals", "Jane Smith"));
    };
}

}
