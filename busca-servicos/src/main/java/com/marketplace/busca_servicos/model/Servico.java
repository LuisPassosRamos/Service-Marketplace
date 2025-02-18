package com.marketplace.busca_servicos.model;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;

public class Servico {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String titulo;
    
}
