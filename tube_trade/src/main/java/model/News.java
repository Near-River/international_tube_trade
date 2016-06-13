package model;

import org.hibernate.annotations.Type;

import javax.persistence.*;

@Entity
@Table(name = "news")
public class News extends BaseEntity {

    /*新闻标题*/
    @Column(length = 128)
    private String title;

    /*新闻内容*/
    @Type(type = "text")
    private String content;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

}
