package com.hgu.library.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;
@Data
@Getter
@Setter
public class BookList {
    private int id;
    private String bookcode, pdf_title, thumnail, book_title, author, translator, publication_date, publisher
            ,pages, isbn, location, memo, copies;
    private Date reg_date;
}
