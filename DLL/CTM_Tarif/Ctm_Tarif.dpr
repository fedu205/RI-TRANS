library Ctm_Tarif;

uses
  Midas,
  MidasLib,
  SysUtils,
  Classes,
  CtmRaznoe in 'CtmRaznoe.pas',
  CtmLoadDictoinary in 'CtmLoadDictoinary.pas' {fmCtmLoadDictoinary},
  CtmNewMain in 'CtmNewMain.pas' {fmCtmNewMain},
  CtmNewNode in 'CtmNewNode.pas' {fmCtmNewNode},
  CtmNewOtpr in 'CtmNewOtpr.pas' {fmCtmNewOtpr},
  CtmNewCargo in 'CtmNewCargo.pas' {fmCtmNewCargo},
  CtmNewCars in 'CtmNewCars.pas' {fmCtmNewCars},
  CtmNewOption in 'CtmNewOption.pas' {fmCtmNewOption},
  CtmNewSupport in 'CtmNewSupport.pas' {fmCtmNewSupport},
  CtmNewCargoMulti in 'CtmNewCargoMulti.pas' {fmCtmNewCargoMulti},
  CtmNewPrint in 'CtmNewPrint.pas' {fmCtmNewPrint},
  CtmNewSave in 'CtmNewSave.pas' {fmCtmNewSave},
  CtmNewExchange in 'CtmNewExchange.pas' {fmCtmNewExchange},
  CtmNewTaxes in 'CtmNewTaxes.pas' {fmCtmNewTaxes},
  CtmViewDocsParam in 'CtmViewDocsParam.pas' {fmCtmViewDocsParam},
  CtmCalcParam in 'CtmCalcParam.pas' {fmCalcParam},
  CtmNewWashing in 'CtmNewWashing.pas' {fmCtmNewWashing},
  CtmNewBulkiness in 'CtmNewBulkiness.pas' {fmCtmNewBulkiness},
  CtmNewBulkinessDetail in 'CtmNewBulkinessDetail.pas' {fmCtmNewBulkinessDetail},
  RailTariff_TLB in 'RailTariff_TLB.pas',
  CtmNewBuffer in 'CtmNewBuffer.pas' {fmCtmNewBuffer},
  CtmNewFlat in 'CtmNewFlat.pas' {fmCtmNewFlat},
  CtmNewBackRoute in 'CtmNewBackRoute.pas' {fmCtmNewBackRoute},
  CtmNewKIT in 'CtmNewKIT.pas' {fmCtmNewKIT},
  RailAtlas_TLB in 'RailAtlas_TLB.pas';

{$R *.res}
exports GetCalcDistance;
exports GetCalcDistanceFast;
exports GetCalcDistanceGroup;
exports GetCalcDistanceGroupFast;
exports GetStationFindAround;
exports CreateWndCtmLoadDictoinary;
exports CreateWndNewCtm;
exports CreateWndCalcParam;
exports GetFullRoute;
exports GetPPRoute;
exports GetPeriodOfDelivery;
exports GetCalcTariff;
exports GetCalcTariffEmpty;
exports GetCalcTariffCalculate;
exports GetCalcTariffCalculate2;
exports GetCalcTariffCalculate3;
exports GetCalcTariffEmpty2;

begin
end.
