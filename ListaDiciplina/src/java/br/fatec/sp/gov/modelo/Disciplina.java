/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.fatec.sp.gov.modelo;

import java.util.Date;

/**
 *
 * @author Fatec
 */
public class Disciplina {
    private String sigla;
    private String nome; 
    private String ementa;
    private Date diaDaSemana; 
    private Date horário;

    public String getSigla() {
        return sigla;
    }

    public Disciplina(String nome, String sigla) {
        this.nome = nome;
        this.sigla= sigla;
    }

    public void setSigla(String sigla) {
        this.sigla = sigla;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public Date getDiaDaSemana() {
        return diaDaSemana;
    }

    public void setDiaDaSemana(Date diaDaSemana) {
        this.diaDaSemana = diaDaSemana;
    }

    public Date getHorário() {
        return horário;
    }

    public void setHorário(Date horário) {
        this.horário = horário;
    }
}
