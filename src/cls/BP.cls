/// 
Class Python.BP Extends Ens.BusinessProcessBPL
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='Ens.StringRequest' response='Ens.Response' height='2000' width='2000' >
<context>
<property name='tMessage' type='IOP.Message' instantiate='0' />
</context>
<sequence xend='200' yend='450' >
<transform name='LegacyToPython' class='Python.LegacyToPython' source='request' target='context.tMessage' xpos='200' ypos='250' />
<call name='Call Python BO' target='Python.BO' async='0' xpos='200' ypos='350' >
<request type='IOP.Message' >
<assign property="callrequest" value="context.tMessage" action="set" languageOverride="" />
</request>
</call>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
