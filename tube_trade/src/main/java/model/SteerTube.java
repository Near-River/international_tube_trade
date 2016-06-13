package model;

import org.hibernate.annotations.Type;

import javax.persistence.*;

@Entity
@Table(name = "steer_tube")
public class SteerTube extends BaseEntity {

    /*钢管名称*/
    @Column(length = 128)
    private String name;

    /*钢管类型*/
    @Column(length = 128)
    private String category;

    /*钢管简介*/
    @Type(type = "text")
    private String desc;

    /*钢管图片*/
    @Column(length = 128)
    private String imageUrl;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
}
