codeunit 52005 "WIPSCHUpgradeMgmt"
{
    // Subtype = Upgrade;

    // trigger OnUpgradePerCompany()
    // var
    //     WIPSCHUpgradeTagDefinitions: Codeunit WIPSCHUpgradeTagDefinitions;
    //     UpgradeTagMgt: Codeunit "Upgrade Tag";
    // begin
    //     // Check whether the tag has been used before, and if so, don't run upgrade code
    //     if UpgradeTagMgt.HasUpgradeTag(WIPSCHUpgradeTagDefinitions.GetMyFeatureUpgradeTag()) then
    //         exit;

    //     // Run upgrade code
    //     DoMyFeatureUpgradeTag();

    //     // Insert the upgrade tag in table 9999 "Upgrade Tags" for future reference
    //     UpgradeTagMgt.SetUpgradeTag(WIPSCHUpgradeTagDefinitions.GetMyFeatureUpgradeTag());
    // end;

    // local procedure DoMyFeatureUpgradeTag()
    // begin
    // end;
}