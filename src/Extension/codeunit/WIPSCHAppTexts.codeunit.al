codeunit 52003 "WIPSCHAppTexts"
{
    internal procedure GetEssentialAppAreaErr(): Text
    var
        EssentialAppAreaErr: Label 'WIPSCHAppArea should be part of Essential in order for %1 to work.', Locked = true;
    begin
        exit(GetErrorText(EssentialAppAreaErr));
    end;

    internal procedure GetPremiumAppAreaErr(): Text
    var
        PremiumAppAreaErr: Label 'WIPSCHAppArea should be part of Premium in order for %1 to work.', Locked = true;
    begin
        exit(GetErrorText(PremiumAppAreaErr));
    end;

    local procedure GetErrorText(AppAreaErr: Text): Text
    var
        ModuleInfo: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(ModuleInfo);
        exit(StrSubstNo(AppAreaErr, ModuleInfo.Name));
    end;
}