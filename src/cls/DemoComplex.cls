Class UnitTest.ComplexTransform Extends Ens.DataTransformDTL [ DependsOn = IOP.Message ]
{

Parameter IGNOREMISSINGSOURCE = 1;

Parameter REPORTERRORS = 1;

Parameter TREATEMPTYREPEATINGFIELDASNULL = 0;

XData DTL [ XMLNamespace = "http://www.intersystems.com/dtl" ]
{
<transform sourceClass='IOP.Message' targetClass='IOP.Message' sourceDocType='Demo' targetDocType='Demo' create='new' language='objectscript' >
<assign value='source.{post}' property='target.{post}' action='set' />
<foreach property='source.{my_list()}' key='k1' >
<assign value='source.{my_list(k1)}_"foo"' property='target.{my_list()}' action='append' />
</foreach>
<foreach property='source.{list_of_post()}' key='k2' >
<assign value='source.{list_of_post().title}' property='target.{list_of_post(k2).title}' action='append' />
</foreach>
</transform>
}

}
