library Dictionary;

uses
  Midas,
  MidasLib,
  SysUtils,
  Classes,
  Dict in 'Dict.pas' {fmDict},
  DictAdd in 'DictAdd.pas' {fmDictAdd},
  DocBlob in 'DocBlob.pas' {fmDocBlob},
  DocBlobAdd in 'DocBlobAdd.pas' {fmDocBlobAdd},
  DocShablonAdd in 'DocShablonAdd.pas' {fmDocShablonAdd},
  DocShablon in 'DocShablon.pas' {fmDocShablon},
  InvoiceHeader in 'InvoiceHeader.pas' {fmInvoiceHeader},
  InvoiceHeaderAdd in 'InvoiceHeaderAdd.pas' {fmInvoiceHeaderAdd},
  VagonModel in 'VagonModel.pas' {fmVagonModel},
  VagonModelAdd in 'VagonModelAdd.pas' {fmVagonModelAdd},
  Vagon in 'Vagon.pas' {fmVagon},
  VagonAdd in 'VagonAdd.pas' {fmVagonAdd},
  VagonOwnerAdd in 'VagonOwnerAdd.pas' {fmVagonOwnerAdd},
  VagonCommentAdd in 'VagonCommentAdd.pas' {fmVagonCommentAdd},
  VagonRepair in 'VagonRepair.pas' {fmVagonRepair},
  VagonRepairAdd in 'VagonRepairAdd.pas' {fmVagonRepairAdd},
  PretenziaAdd in 'PretenziaAdd.pas' {fmPretenziaAdd},
  Pretenzia in 'Pretenzia.pas' {fmPretenzia},
  GlobalAlias in 'GlobalAlias.pas' {fmGlobalAlias},
  GlobalAliasAdd in 'GlobalAliasAdd.pas' {fmGlobalAliasAdd},
  EqualNode in 'EqualNode.pas' {fmEqualNode},
  EqualNodeAdd in 'EqualNodeAdd.pas' {fmEqualNodeAdd},
  FactParam in 'FactParam.pas' {fmFactParam},
  VagonChoose in 'VagonChoose.pas' {fmVagonChoose},
  FactMilage in 'FactMilage.pas' {fmFactMilage},
  FactUnit in 'FactUnit.pas' {fmfactunit},
  VagonRepairPlan in 'VagonRepairPlan.pas' {fmVagonRepairPlan},
  VagonRepairPlanAdd in 'VagonRepairPlanAdd.pas' {fmVagonRepairPlanAdd},
  FinansControls in 'FinansControls.pas' {fmFinansControls},
  DictServiceAdd in 'DictServiceAdd.pas' {fmDictServiceAdd},
  DictService in 'DictService.pas' {fmDictService},
  DocUsersAdd in 'DocUsersAdd.pas' {fmDocUsersAdd},
  DocBlobAddNew in 'DocBlobAddNew.pas' {fmDocBlobAddNew},
  VagonComment6 in 'VagonComment6.pas' {fmVagonComment6},
  VagonComment6Add in 'VagonComment6Add.pas' {fmVagonComment6Add},
  FactRepairPrice in 'FactRepairPrice.pas' {fmFactRepairPrice},
  FactRepairPriceAdd in 'FactRepairPriceAdd.pas' {fmFactRepairPriceAdd},
  DocFolderAdd in 'DocFolderAdd.pas' {fmDocFolderAdd},
  FactTrackMailing in 'FactTrackMailing.pas' {fmFactTrackMailing},
  FactTrackMailingAdd in 'FactTrackMailingAdd.pas' {fmFactTrackMailingAdd},
  Distance in 'Distance.pas' {fmDistance},
  DistanceAdd in 'DistanceAdd.pas' {fmDistanceAdd},
  VagonTMC in 'VagonTMC.pas' {fmVagonTMC},
  VagonTMCAdd in 'VagonTMCAdd.pas' {fmVagonTMCAdd},
  VagonNSI in 'VagonNSI.pas' {fmVagonNSI},
  VagonTech in 'VagonTech.pas' {fmVagonTech};

{$R *.RES} {$R Lis2.RES}
exports CreateWndDictionary;
exports CreateWndDocBlob;
exports CreateWndDocAdd;
exports CreateWndDocShablon;
exports CreateWndInvoiceHeader;
exports CreateWndVagonModel;

exports CreateWndVagon;
exports CreateWndVagonLocate;
exports CreateWndVagonNew;

exports CreateWndVagonCommentAdd;
exports CreateWndVagonComment13Add;

exports CreateWndVagonRepair;
exports CreateWndVagonRepairFind;
exports CreateWndVagonRepairAnalis;
exports CreateWndPretenzia;
exports CreateWndGlobalAlias_New;
exports CreateWndGlobalAlias;
exports CreateWndEqualNode;
exports CreateWndFactParam;
exports CreateWndFactMilage;
exports CreateWndFactUnit;
exports CreateWndVagonRepairPlan;

exports CreateWndChoose;
exports CreateWndChoose_Ext;
exports CreateWndVagonChoose;

exports CreateWndDictionaryEdit;
exports CreateWndFinControl;
exports CreateWndDictService;
exports CreateWndDocUsersAdd;
exports CreateWndVagonComment6;

exports CreateWndFactRepairPrice;
exports CreateWndFactTrackMailing;

exports CreateWndDistance;

exports CreateWndVagonTMC;
exports CreateWndVagonTMCAdd;
exports CreateWndVagonNSI;
exports CreateWndVagonTech;

begin
end.
