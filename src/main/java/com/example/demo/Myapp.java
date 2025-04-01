package com.example.demo;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

import com.example.demo.model.Book;
import com.example.demo.repository.BookRepository;


@SpringBootApplication
public class Myapp {

	public static void main(String[] args) {
        SpringApplication.run(Myapp.class, args);
    }

    @Bean
    public CommandLineRunner initData(BookRepository bookRepository) {
        return args -> {
            bookRepository.save(new Book("Spring Boot Basics", "John Doe"));
            bookRepository.save(new Book("Java Fundamentals", "Jane Smith"));
        };
    }
}