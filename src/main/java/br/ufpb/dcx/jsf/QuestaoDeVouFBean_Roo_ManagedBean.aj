// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.ufpb.dcx.jsf;

import br.ufpb.dcx.jsf.QuestaoDeVouFBean;
import br.ufpb.dcx.jsf.converter.UsuarioConverter;
import br.ufpb.dcx.jsf.util.MessageFactory;
import br.ufpb.dcx.model.QuestaoVouF;
import br.ufpb.dcx.model.Usuario;
import br.ufpb.dcx.service.UsuarioService;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.el.ELContext;
import javax.el.ExpressionFactory;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.html.HtmlOutputText;
import javax.faces.component.html.HtmlPanelGrid;
import javax.faces.context.FacesContext;
import org.primefaces.component.autocomplete.AutoComplete;
import org.primefaces.component.inputtext.InputText;
import org.primefaces.component.inputtextarea.InputTextarea;
import org.primefaces.component.message.Message;
import org.primefaces.component.outputlabel.OutputLabel;
import org.primefaces.context.RequestContext;
import org.primefaces.event.CloseEvent;
import org.springframework.beans.factory.annotation.Autowired;

privileged aspect QuestaoDeVouFBean_Roo_ManagedBean {
    
    declare @type: QuestaoDeVouFBean: @ManagedBean(name = "questaoDeVouFBean");
    
    declare @type: QuestaoDeVouFBean: @SessionScoped;
    
    @Autowired
    UsuarioService QuestaoDeVouFBean.usuarioService;
    
    private String QuestaoDeVouFBean.name = "QuestaoVouFs";
    
    private QuestaoVouF QuestaoDeVouFBean.questaoVouF;
    
    private List<QuestaoVouF> QuestaoDeVouFBean.allQuestaoVouFs;
    
    private boolean QuestaoDeVouFBean.dataVisible = false;
    
    private List<String> QuestaoDeVouFBean.columns;
    
    private HtmlPanelGrid QuestaoDeVouFBean.createPanelGrid;
    
    private HtmlPanelGrid QuestaoDeVouFBean.editPanelGrid;
    
    private HtmlPanelGrid QuestaoDeVouFBean.viewPanelGrid;
    
    private boolean QuestaoDeVouFBean.createDialogVisible = false;
    
    @PostConstruct
    public void QuestaoDeVouFBean.init() {
        columns = new ArrayList<String>();
        columns.add("nome");
        columns.add("enunciado");
    }
    
    public String QuestaoDeVouFBean.getName() {
        return name;
    }
    
    public List<String> QuestaoDeVouFBean.getColumns() {
        return columns;
    }
    
    public List<QuestaoVouF> QuestaoDeVouFBean.getAllQuestaoVouFs() {
        return allQuestaoVouFs;
    }
    
    public void QuestaoDeVouFBean.setAllQuestaoVouFs(List<QuestaoVouF> allQuestaoVouFs) {
        this.allQuestaoVouFs = allQuestaoVouFs;
    }
    
    public String QuestaoDeVouFBean.findAllQuestaoVouFs() {
        allQuestaoVouFs = questaoVouFService.findAllQuestaoVouFs();
        dataVisible = !allQuestaoVouFs.isEmpty();
        return null;
    }
    
    public boolean QuestaoDeVouFBean.isDataVisible() {
        return dataVisible;
    }
    
    public void QuestaoDeVouFBean.setDataVisible(boolean dataVisible) {
        this.dataVisible = dataVisible;
    }
    
    public HtmlPanelGrid QuestaoDeVouFBean.getCreatePanelGrid() {
        if (createPanelGrid == null) {
            createPanelGrid = populateCreatePanel();
        }
        return createPanelGrid;
    }
    
    public void QuestaoDeVouFBean.setCreatePanelGrid(HtmlPanelGrid createPanelGrid) {
        this.createPanelGrid = createPanelGrid;
    }
    
    public HtmlPanelGrid QuestaoDeVouFBean.getEditPanelGrid() {
        if (editPanelGrid == null) {
            editPanelGrid = populateEditPanel();
        }
        return editPanelGrid;
    }
    
    public void QuestaoDeVouFBean.setEditPanelGrid(HtmlPanelGrid editPanelGrid) {
        this.editPanelGrid = editPanelGrid;
    }
    
    public HtmlPanelGrid QuestaoDeVouFBean.getViewPanelGrid() {
        return populateViewPanel();
    }
    
    public void QuestaoDeVouFBean.setViewPanelGrid(HtmlPanelGrid viewPanelGrid) {
        this.viewPanelGrid = viewPanelGrid;
    }
    
    public HtmlPanelGrid QuestaoDeVouFBean.populateCreatePanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel nomeCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        nomeCreateOutput.setFor("nomeCreateInput");
        nomeCreateOutput.setId("nomeCreateOutput");
        nomeCreateOutput.setValue("Nome:");
        htmlPanelGrid.getChildren().add(nomeCreateOutput);
        
        InputText nomeCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        nomeCreateInput.setId("nomeCreateInput");
        nomeCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{questaoDeVouFBean.questaoVouF.nome}", String.class));
        nomeCreateInput.setRequired(false);
        htmlPanelGrid.getChildren().add(nomeCreateInput);
        
        Message nomeCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nomeCreateInputMessage.setId("nomeCreateInputMessage");
        nomeCreateInputMessage.setFor("nomeCreateInput");
        nomeCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nomeCreateInputMessage);
        
        OutputLabel enunciadoCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        enunciadoCreateOutput.setFor("enunciadoCreateInput");
        enunciadoCreateOutput.setId("enunciadoCreateOutput");
        enunciadoCreateOutput.setValue("Enunciado:");
        htmlPanelGrid.getChildren().add(enunciadoCreateOutput);
        
        InputTextarea enunciadoCreateInput = (InputTextarea) application.createComponent(InputTextarea.COMPONENT_TYPE);
        enunciadoCreateInput.setId("enunciadoCreateInput");
        enunciadoCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{questaoDeVouFBean.questaoVouF.enunciado}", String.class));
        enunciadoCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(enunciadoCreateInput);
        
        Message enunciadoCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        enunciadoCreateInputMessage.setId("enunciadoCreateInputMessage");
        enunciadoCreateInputMessage.setFor("enunciadoCreateInput");
        enunciadoCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(enunciadoCreateInputMessage);
        
        OutputLabel professorCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        professorCreateOutput.setFor("professorCreateInput");
        professorCreateOutput.setId("professorCreateOutput");
        professorCreateOutput.setValue("Professor:");
        htmlPanelGrid.getChildren().add(professorCreateOutput);
        
        AutoComplete professorCreateInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        professorCreateInput.setId("professorCreateInput");
        professorCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{questaoDeVouFBean.questaoVouF.professor}", Usuario.class));
        professorCreateInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{questaoDeVouFBean.completeProfessor}", List.class, new Class[] { String.class }));
        professorCreateInput.setDropdown(true);
        professorCreateInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "professor", String.class));
        professorCreateInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{professor.nome} #{professor.nickName} #{professor.email} #{professor.senha}", String.class));
        professorCreateInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{professor}", Usuario.class));
        professorCreateInput.setConverter(new UsuarioConverter());
        professorCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(professorCreateInput);
        
        Message professorCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        professorCreateInputMessage.setId("professorCreateInputMessage");
        professorCreateInputMessage.setFor("professorCreateInput");
        professorCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(professorCreateInputMessage);
        
        OutputLabel alternativasCreateOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        alternativasCreateOutput.setFor("alternativasCreateInput");
        alternativasCreateOutput.setId("alternativasCreateOutput");
        alternativasCreateOutput.setValue("Alternativas:");
        htmlPanelGrid.getChildren().add(alternativasCreateOutput);
        
        InputText alternativasCreateInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        alternativasCreateInput.setId("alternativasCreateInput");
        alternativasCreateInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{questaoDeVouFBean.questaoVouF.alternativas}", List.class));
        alternativasCreateInput.setRequired(true);
        htmlPanelGrid.getChildren().add(alternativasCreateInput);
        
        Message alternativasCreateInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        alternativasCreateInputMessage.setId("alternativasCreateInputMessage");
        alternativasCreateInputMessage.setFor("alternativasCreateInput");
        alternativasCreateInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(alternativasCreateInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid QuestaoDeVouFBean.populateEditPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        OutputLabel nomeEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        nomeEditOutput.setFor("nomeEditInput");
        nomeEditOutput.setId("nomeEditOutput");
        nomeEditOutput.setValue("Nome:");
        htmlPanelGrid.getChildren().add(nomeEditOutput);
        
        InputText nomeEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        nomeEditInput.setId("nomeEditInput");
        nomeEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{questaoDeVouFBean.questaoVouF.nome}", String.class));
        nomeEditInput.setRequired(false);
        htmlPanelGrid.getChildren().add(nomeEditInput);
        
        Message nomeEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        nomeEditInputMessage.setId("nomeEditInputMessage");
        nomeEditInputMessage.setFor("nomeEditInput");
        nomeEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(nomeEditInputMessage);
        
        OutputLabel enunciadoEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        enunciadoEditOutput.setFor("enunciadoEditInput");
        enunciadoEditOutput.setId("enunciadoEditOutput");
        enunciadoEditOutput.setValue("Enunciado:");
        htmlPanelGrid.getChildren().add(enunciadoEditOutput);
        
        InputTextarea enunciadoEditInput = (InputTextarea) application.createComponent(InputTextarea.COMPONENT_TYPE);
        enunciadoEditInput.setId("enunciadoEditInput");
        enunciadoEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{questaoDeVouFBean.questaoVouF.enunciado}", String.class));
        enunciadoEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(enunciadoEditInput);
        
        Message enunciadoEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        enunciadoEditInputMessage.setId("enunciadoEditInputMessage");
        enunciadoEditInputMessage.setFor("enunciadoEditInput");
        enunciadoEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(enunciadoEditInputMessage);
        
        OutputLabel professorEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        professorEditOutput.setFor("professorEditInput");
        professorEditOutput.setId("professorEditOutput");
        professorEditOutput.setValue("Professor:");
        htmlPanelGrid.getChildren().add(professorEditOutput);
        
        AutoComplete professorEditInput = (AutoComplete) application.createComponent(AutoComplete.COMPONENT_TYPE);
        professorEditInput.setId("professorEditInput");
        professorEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{questaoDeVouFBean.questaoVouF.professor}", Usuario.class));
        professorEditInput.setCompleteMethod(expressionFactory.createMethodExpression(elContext, "#{questaoDeVouFBean.completeProfessor}", List.class, new Class[] { String.class }));
        professorEditInput.setDropdown(true);
        professorEditInput.setValueExpression("var", expressionFactory.createValueExpression(elContext, "professor", String.class));
        professorEditInput.setValueExpression("itemLabel", expressionFactory.createValueExpression(elContext, "#{professor.nome} #{professor.nickName} #{professor.email} #{professor.senha}", String.class));
        professorEditInput.setValueExpression("itemValue", expressionFactory.createValueExpression(elContext, "#{professor}", Usuario.class));
        professorEditInput.setConverter(new UsuarioConverter());
        professorEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(professorEditInput);
        
        Message professorEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        professorEditInputMessage.setId("professorEditInputMessage");
        professorEditInputMessage.setFor("professorEditInput");
        professorEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(professorEditInputMessage);
        
        OutputLabel alternativasEditOutput = (OutputLabel) application.createComponent(OutputLabel.COMPONENT_TYPE);
        alternativasEditOutput.setFor("alternativasEditInput");
        alternativasEditOutput.setId("alternativasEditOutput");
        alternativasEditOutput.setValue("Alternativas:");
        htmlPanelGrid.getChildren().add(alternativasEditOutput);
        
        InputText alternativasEditInput = (InputText) application.createComponent(InputText.COMPONENT_TYPE);
        alternativasEditInput.setId("alternativasEditInput");
        alternativasEditInput.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{questaoDeVouFBean.questaoVouF.alternativas}", List.class));
        alternativasEditInput.setRequired(true);
        htmlPanelGrid.getChildren().add(alternativasEditInput);
        
        Message alternativasEditInputMessage = (Message) application.createComponent(Message.COMPONENT_TYPE);
        alternativasEditInputMessage.setId("alternativasEditInputMessage");
        alternativasEditInputMessage.setFor("alternativasEditInput");
        alternativasEditInputMessage.setDisplay("icon");
        htmlPanelGrid.getChildren().add(alternativasEditInputMessage);
        
        return htmlPanelGrid;
    }
    
    public HtmlPanelGrid QuestaoDeVouFBean.populateViewPanel() {
        FacesContext facesContext = FacesContext.getCurrentInstance();
        javax.faces.application.Application application = facesContext.getApplication();
        ExpressionFactory expressionFactory = application.getExpressionFactory();
        ELContext elContext = facesContext.getELContext();
        
        HtmlPanelGrid htmlPanelGrid = (HtmlPanelGrid) application.createComponent(HtmlPanelGrid.COMPONENT_TYPE);
        
        HtmlOutputText nomeLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        nomeLabel.setId("nomeLabel");
        nomeLabel.setValue("Nome:");
        htmlPanelGrid.getChildren().add(nomeLabel);
        
        HtmlOutputText nomeValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        nomeValue.setId("nomeValue");
        nomeValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{questaoDeVouFBean.questaoVouF.nome}", String.class));
        htmlPanelGrid.getChildren().add(nomeValue);
        
        HtmlOutputText enunciadoLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        enunciadoLabel.setId("enunciadoLabel");
        enunciadoLabel.setValue("Enunciado:");
        htmlPanelGrid.getChildren().add(enunciadoLabel);
        
        InputTextarea enunciadoValue = (InputTextarea) application.createComponent(InputTextarea.COMPONENT_TYPE);
        enunciadoValue.setId("enunciadoValue");
        enunciadoValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{questaoDeVouFBean.questaoVouF.enunciado}", String.class));
        enunciadoValue.setReadonly(true);
        enunciadoValue.setDisabled(true);
        htmlPanelGrid.getChildren().add(enunciadoValue);
        
        HtmlOutputText professorLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        professorLabel.setId("professorLabel");
        professorLabel.setValue("Professor:");
        htmlPanelGrid.getChildren().add(professorLabel);
        
        HtmlOutputText professorValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        professorValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{questaoDeVouFBean.questaoVouF.professor}", Usuario.class));
        professorValue.setConverter(new UsuarioConverter());
        htmlPanelGrid.getChildren().add(professorValue);
        
        HtmlOutputText alternativasLabel = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        alternativasLabel.setId("alternativasLabel");
        alternativasLabel.setValue("Alternativas:");
        htmlPanelGrid.getChildren().add(alternativasLabel);
        
        HtmlOutputText alternativasValue = (HtmlOutputText) application.createComponent(HtmlOutputText.COMPONENT_TYPE);
        alternativasValue.setValueExpression("value", expressionFactory.createValueExpression(elContext, "#{questaoDeVouFBean.questaoVouF.alternativas}", String.class));
        htmlPanelGrid.getChildren().add(alternativasValue);
        
        return htmlPanelGrid;
    }
    
    public QuestaoVouF QuestaoDeVouFBean.getQuestaoVouF() {
        if (questaoVouF == null) {
            questaoVouF = new QuestaoVouF();
        }
        return questaoVouF;
    }
    
    public void QuestaoDeVouFBean.setQuestaoVouF(QuestaoVouF questaoVouF) {
        this.questaoVouF = questaoVouF;
    }
    
    public List<Usuario> QuestaoDeVouFBean.completeProfessor(String query) {
        List<Usuario> suggestions = new ArrayList<Usuario>();
        for (Usuario usuario : usuarioService.findAllUsuarios()) {
            String usuarioStr = String.valueOf(usuario.getNome() +  " "  + usuario.getNickName() +  " "  + usuario.getEmail() +  " "  + usuario.getSenha());
            if (usuarioStr.toLowerCase().startsWith(query.toLowerCase())) {
                suggestions.add(usuario);
            }
        }
        return suggestions;
    }
    
    public String QuestaoDeVouFBean.onEdit() {
        return null;
    }
    
    public boolean QuestaoDeVouFBean.isCreateDialogVisible() {
        return createDialogVisible;
    }
    
    public void QuestaoDeVouFBean.setCreateDialogVisible(boolean createDialogVisible) {
        this.createDialogVisible = createDialogVisible;
    }
    
    public String QuestaoDeVouFBean.displayList() {
        createDialogVisible = false;
        findAllQuestaoVouFs();
        return "questaoVouF";
    }
    
    public String QuestaoDeVouFBean.displayCreateDialog() {
        questaoVouF = new QuestaoVouF();
        createDialogVisible = true;
        return "questaoVouF";
    }
    
    public String QuestaoDeVouFBean.persist() {
        String message = "";
        if (questaoVouF.getId() != null) {
            questaoVouFService.updateQuestaoVouF(questaoVouF);
            message = "message_successfully_updated";
        } else {
            questaoVouFService.saveQuestaoVouF(questaoVouF);
            message = "message_successfully_created";
        }
        RequestContext context = RequestContext.getCurrentInstance();
        context.execute("createDialogWidget.hide()");
        context.execute("editDialogWidget.hide()");
        
        FacesMessage facesMessage = MessageFactory.getMessage(message, "QuestaoVouF");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllQuestaoVouFs();
    }
    
    public String QuestaoDeVouFBean.delete() {
        questaoVouFService.deleteQuestaoVouF(questaoVouF);
        FacesMessage facesMessage = MessageFactory.getMessage("message_successfully_deleted", "QuestaoVouF");
        FacesContext.getCurrentInstance().addMessage(null, facesMessage);
        reset();
        return findAllQuestaoVouFs();
    }
    
    public void QuestaoDeVouFBean.reset() {
        questaoVouF = null;
        createDialogVisible = false;
    }
    
    public void QuestaoDeVouFBean.handleDialogClose(CloseEvent event) {
        reset();
    }
    
}