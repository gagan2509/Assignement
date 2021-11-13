#RecursiveFunction
Function Find-ProblemValue {
    [CmdletBinding()]
    Param(
        [parameter (Mandatory = $true)]
        $ProblemObject,
        [parameter (Mandatory = $true)]
        $ProblemKey
    )

    try 
    {
        $First,$Rest = $ProblemKey.Split("/")
        if($Rest) 
        { 
            return Find-ProblemValue -ProblemObject $ProblemObject.$First -ProblemKey $Rest 
        }
        else 
        {
            return $ProblemObject.$First 
        }
    }
    catch
    {
        $ErrorMessage = "Find-ProblemValue: $($_.Exception.Message)"
        Throw $ErrorMessage
    }
}


#TestCase1
$SampleObject = [PSCustomObject]@{ PropertyName = [PSCustomObject]@{ NestedPropertyName = ‘FirstNestedPropertyValue1’ } }
$SampleKey = "PropertyName/NestedPropertyName"
Find-ProblemValue -ProblemObject $SampleObject -ProblemKey $SampleKey
#Value = FirstNestedPropertyValue1

#TestCase2
$SampleObject = [PSCustomObject]@{ PropertyName = [PSCustomObject]@{ NestedPropertyName1 = [PSCustomObject]@{ NestedPropertyName2 = ‘FirstNestedPropertyValue2’ } } }
$SampleKey = "PropertyName/NestedPropertyName1/NestedPropertyName2"
Find-ProblemValue -ProblemObject $SampleObject -ProblemKey $SampleKey

#Value = FirstNestedPropertyValue2

