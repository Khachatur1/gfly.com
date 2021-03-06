package am.gfly.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Post")
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column
    private int id;
    @Column
    private String title;
    @Column
    private String description;
    @Column(name = "pic_url")
    private String picUrl;
    @Column
    private Date timestamp;
    @ManyToOne
    private User user;

}
