tableextension 52001 WIPSCHSalesLine extends "Sales Line"
{
    fields
    {
        field(52000; WIPSCHTotalItemNetWeight; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Total Item Net Weight';
        }
    }

}