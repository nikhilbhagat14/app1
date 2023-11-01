codeunit 52004 "WIPSCHInstallMgmt"
{
    Subtype = Install;
    trigger OnInstallAppPerCompany()
    var
        WIPSCHAppArea: Codeunit "WIPSCHAppArea";
    begin
        // Code for company related operations
        if (WIPSCHAppArea.IsAppAreaEnabled()) then
            exit;

        WIPSCHAppArea.EnableAppArea();
    end;
}