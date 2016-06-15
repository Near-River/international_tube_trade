package model;

import org.hibernate.annotations.Type;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;


@Entity
@Table(name = "tube")
public class SteerTube extends BaseEntity {
    /*钢管名称*/
    @Column(length = 128)
    private String pname;

    /*钢管类型*/
    @Column(length = 128)
    private String pcategory;

    /*钢管简介*/
    @Type(type = "text")
    private String pdesc;

    /*钢管图片*/
    @Column(length = 128)
    private String pimage;

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getPcategory() {
        return pcategory;
    }

    public void setPcategory(String pcategory) {
        this.pcategory = pcategory;
    }

    public String getPdesc() {
        return pdesc;
    }

    public void setPdesc(String pdesc) {
        this.pdesc = pdesc;
    }

    public String getPimage() {
        return pimage;
    }

    public void setPimage(String pimage) {
        this.pimage = pimage;
    }
}
