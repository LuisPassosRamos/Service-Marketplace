package com.marketplace.busca_servicos.model;

import java.time.LocalDateTime;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "Mensagem")
public class Mensagem {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(length = 150, nullable = false)
    private String conteudo;

    @Column(columnDefinition = "TIMESTAMP", nullable = false)
    private LocalDateTime dataHora;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "remetente", nullable = false)
    private Usuario remetente;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "destinatario", nullable = false)
    private Usuario destinatario;

}
