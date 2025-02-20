package com.marketplace.busca_servicos.model;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Avaliacao")
public class Avaliacao {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private Integer nota;

    @Column(length = 150, nullable = false)
    private String comentario;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "servico", nullable = false)
    private Servico servico;
    
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "cliente", nullable = false)
    private Usuario cliente;
}
