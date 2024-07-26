using System.Management.Automation;

namespace psmbinary;


[Cmdlet( VerbsDiagnostic.Resolve , "MyCmdlet")]
public class Cmdlet1 : PSCmdlet
{
    [Parameter(Position=0)]
    public Object InputObject { get; set; }

    protected override void EndProcessing()
    {
        this.WriteObject(this.InputObject);
        base.EndProcessing();
    }
}