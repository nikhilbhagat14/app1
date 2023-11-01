codeunit 52000 "WIPSCHAppArea"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Application Area Mgmt.", 'OnGetEssentialExperienceAppAreas', '', false, false)]
    local procedure RegisterAppAreaOnGetEssentialExperienceAppAreas(var TempApplicationAreaSetup: Record "Application Area Setup" temporary)
    begin
        TempApplicationAreaSetup.WIPSCHAppArea := true;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Application Area Mgmt.", 'OnGetPremiumExperienceAppAreas', '', false, false)]
    local procedure RegisterAppAreaOnGetPremiumExperienceAppAreas(var TempApplicationAreaSetup: Record "Application Area Setup" temporary)
    begin
        TempApplicationAreaSetup.WIPSCHAppArea := true;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Application Area Mgmt.", 'OnValidateApplicationAreas', '', false, false)]
    local procedure VerifyApplicationAreasOnValidateApplicationAreas(ExperienceTierSetup: Record "Experience Tier Setup"; TempApplicationAreaSetup: Record "Application Area Setup" temporary)
    var
        WIPSCHAppTexts: Codeunit WIPSCHAppTexts;
    begin
        if ExperienceTierSetup.Essential then
            if not TempApplicationAreaSetup.WIPSCHAppArea then
                Error(WIPSCHAppTexts.GetEssentialAppAreaErr());
        if ExperienceTierSetup.Premium then
            if not TempApplicationAreaSetup.WIPSCHAppArea then
                Error(WIPSCHAppTexts.GetPremiumAppAreaErr());
    end;

    internal procedure IsAppAreaEnabled(): Boolean
    var
        ApplicationAreaSetup: Record "Application Area Setup";
        ApplicationAreaMgmtFacade: Codeunit "Application Area Mgmt. Facade";
    begin
        if ApplicationAreaMgmtFacade.GetApplicationAreaSetupRecFromCompany(ApplicationAreaSetup, CompanyName()) then
            exit(ApplicationAreaSetup.WIPSCHAppArea);
    end;

    internal procedure EnableAppArea()
    var
        ApplicationAreaMgmtFacade: Codeunit "Application Area Mgmt. Facade";
    begin
        ApplicationAreaMgmtFacade.RefreshExperienceTierCurrentCompany();
    end;
}