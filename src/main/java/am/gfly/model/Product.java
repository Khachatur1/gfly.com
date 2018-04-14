package am.gfly.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "product")
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column
    private int id;
    @Column
    private String name;
    @Column
    private int wingspan;
    @Column
    private int weight;
    @Column
    @Enumerated(EnumType.STRING)
    private Engine engine;
    @Column
    @Enumerated(EnumType.STRING)
    private Material material;
    @ManyToOne
    private Category category;
    @Column(name = "pic_url")
    private String picUrl;
    @Column
    private String description;
    @Column(name = "short_description")
    private String shortDescription;
    @Column(name = "video_url")
    private String videoUrl;


}
