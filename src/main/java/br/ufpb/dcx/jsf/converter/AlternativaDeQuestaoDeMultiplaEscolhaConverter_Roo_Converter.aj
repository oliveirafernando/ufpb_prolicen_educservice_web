// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.ufpb.dcx.jsf.converter;

import br.ufpb.dcx.jsf.converter.AlternativaDeQuestaoDeMultiplaEscolhaConverter;
import br.ufpb.dcx.model.AlternativaDeQuestaoDeMultiplaEscolha;
import br.ufpb.dcx.service.AlternativaDeQuestaoDeMultiplaEscolhaService;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.FacesConverter;
import org.springframework.beans.factory.annotation.Autowired;

privileged aspect AlternativaDeQuestaoDeMultiplaEscolhaConverter_Roo_Converter {
    
    declare @type: AlternativaDeQuestaoDeMultiplaEscolhaConverter: @FacesConverter("br.ufpb.dcx.jsf.converter.AlternativaDeQuestaoDeMultiplaEscolhaConverter");
    
    @Autowired
    AlternativaDeQuestaoDeMultiplaEscolhaService AlternativaDeQuestaoDeMultiplaEscolhaConverter.alternativaDeQuestaoDeMultiplaEscolhaService;
    
    public Object AlternativaDeQuestaoDeMultiplaEscolhaConverter.getAsObject(FacesContext context, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        Long id = Long.parseLong(value);
        return alternativaDeQuestaoDeMultiplaEscolhaService.findAlternativaDeQuestaoDeMultiplaEscolha(id);
    }
    
    public String AlternativaDeQuestaoDeMultiplaEscolhaConverter.getAsString(FacesContext context, UIComponent component, Object value) {
        return value instanceof AlternativaDeQuestaoDeMultiplaEscolha ? ((AlternativaDeQuestaoDeMultiplaEscolha) value).getId().toString() : "";
    }
    
}