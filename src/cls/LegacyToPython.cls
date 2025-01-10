Class Python.LegacyToPython Extends Ens.DataTransformDTL [ DependsOn = (Ens.StringRequest, IOP.Message) ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='Ens.StringRequest' targetClass='IOP.Message' targetDocType='msg.Msg' create='new' language='objectscript' >
<assign value='source.StringValue' property='target.{message}' action='set' />
</transform>
}

}
