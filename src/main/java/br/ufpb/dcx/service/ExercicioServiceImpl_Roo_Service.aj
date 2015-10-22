// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.ufpb.dcx.service;

import br.ufpb.dcx.model.Exercicio;
import br.ufpb.dcx.service.ExercicioServiceImpl;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ExercicioServiceImpl_Roo_Service {
    
    declare @type: ExercicioServiceImpl: @Service;
    
    declare @type: ExercicioServiceImpl: @Transactional;
    
    public long ExercicioServiceImpl.countAllExercicios() {
        return Exercicio.countExercicios();
    }
    
    public void ExercicioServiceImpl.deleteExercicio(Exercicio exercicio) {
        exercicio.remove();
    }
    
    public Exercicio ExercicioServiceImpl.findExercicio(Long id) {
        return Exercicio.findExercicio(id);
    }
    
    public List<Exercicio> ExercicioServiceImpl.findAllExercicios() {
        return Exercicio.findAllExercicios();
    }
    
    public List<Exercicio> ExercicioServiceImpl.findExercicioEntries(int firstResult, int maxResults) {
        return Exercicio.findExercicioEntries(firstResult, maxResults);
    }
    
    public void ExercicioServiceImpl.saveExercicio(Exercicio exercicio) {
        exercicio.persist();
    }
    
    public Exercicio ExercicioServiceImpl.updateExercicio(Exercicio exercicio) {
        return exercicio.merge();
    }
    
}
