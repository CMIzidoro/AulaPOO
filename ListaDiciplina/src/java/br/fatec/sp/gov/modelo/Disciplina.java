/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.fatec.sp.gov.modelo;



/**
 *
 * @author Fatec
 */
public class Disciplina {
    private String sigla;
    private String nome; 
    private String ementa;
    private String diaDaSemana; 
    private String horário;

    public Disciplina(String nome, String sigla, String diaDaSemana, String ementa) {
        this.nome = nome;
        this.sigla= sigla;
        this.ementa= ementa;
        this.diaDaSemana=diaDaSemana;
    }
    public String getSigla() {
        return sigla;
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
    public String  getDiaDaSemana() {
        return diaDaSemana;
    }
    public void setDiaDaSemana(String diaDaSemana) {
        this.diaDaSemana = diaDaSemana;
    }
    public String getHorário() {
        return horário;
    }
    public void setHorário(String horário) {
        this.horário = horário;
    }
}
