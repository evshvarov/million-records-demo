/// Description
Class shvarov.demo.Million
{

/// This method will insert a range amount of key-value records in a global A
ClassMethod InsertMillionRecords(range As %Integer = 10, clear As %Boolean = 1) As %Status
{
    Set sc = $$$OK
    if clear kill ^A
    // insert million records in a Global ^A
    for i=1:1:range {
        set ^A($INCREMENT(^A))=$RANDOM(range)
    }
    write "We inserted "_range_" random records in a global ^A"

    Return sc
}

}
