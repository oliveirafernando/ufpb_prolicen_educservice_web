// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.ufpb.dcx.model;

import br.ufpb.dcx.model.RespostaDeQuestaoDissertativa;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect RespostaDeQuestaoDissertativa_Roo_Jpa_Entity {
    
    declare @type: RespostaDeQuestaoDissertativa: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long RespostaDeQuestaoDissertativa.id;
    
    @Version
    @Column(name = "version")
    private Integer RespostaDeQuestaoDissertativa.version;
    
    public Long RespostaDeQuestaoDissertativa.getId() {
        return this.id;
    }
    
    public void RespostaDeQuestaoDissertativa.setId(Long id) {
        this.id = id;
    }
    
    public Integer RespostaDeQuestaoDissertativa.getVersion() {
        return this.version;
    }
    
    public void RespostaDeQuestaoDissertativa.setVersion(Integer version) {
        this.version = version;
    }
    
}
