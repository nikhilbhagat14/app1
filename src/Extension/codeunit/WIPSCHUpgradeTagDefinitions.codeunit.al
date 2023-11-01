codeunit 52006 "WIPSCHUpgradeTagDefinitions"
{
    // //For reference: https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-upgrading-extensions
    // // Register the new upgrade tag for new companies when they are created.
    // [EventSubscriber(ObjectType::Codeunit, Codeunit::"Upgrade Tag", 'OnGetPerCompanyUpgradeTags', '', false, false)]
    // local procedure OnGetPerCompanyTags(var PerCompanyUpgradeTags: List of [Code[250]]);
    // begin
    //     PerCompanyUpgradeTags.Add(GetMyFeatureUpgradeTag());
    // end;

    // // Use methods to avoid hard-coding the tags. It is easy to remove afterwards because it's compiler-driven.
    // procedure GetMyFeatureUpgradeTag(): Text
    // begin
    //     exit('WIPSCH-MyFeatureUpgrade-20201209');
    // end;
}