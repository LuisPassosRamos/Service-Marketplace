package com.marketplace.busca_servicos.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Entity
@Table(name = "Servico")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Servico {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 150, nullable = false)
    private String titulo;

    @Column(length = 10000, nullable = false)
    private String descricao;

    @Column(length = 100, nullable = false)
    private String categoria;

    @Column(precision = 10, scale = 2, nullable = false)
    private BigDecimal valorEstimado;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "prestador", nullable = false)
    private Usuario prestador;
}

