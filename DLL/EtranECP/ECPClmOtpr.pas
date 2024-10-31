unit ECPClmOtpr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, cxPC, StdCtrls, Buttons, cxMaskEdit, cxButtonEdit, cxCurrencyEdit,
  cxTextEdit, ExtCtrls, dxBarBuiltInMenu, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog;

type
  TfmECPClmOtpr = class(TForm)
    GridPanel1: TGridPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label34: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxCurrencyEdit1: TcxCurrencyEdit;
    cxCurrencyEdit2: TcxCurrencyEdit;
    cxButtonEdit6: TcxButtonEdit;
    cxButtonEdit1: TcxButtonEdit;
    cxButtonEdit2: TcxButtonEdit;
    cxButtonEdit3: TcxButtonEdit;
    cxTextEdit3: TcxTextEdit;
    cxButtonEdit4: TcxButtonEdit;
    cxCurrencyEdit3: TcxCurrencyEdit;
    cxCurrencyEdit4: TcxCurrencyEdit;
    cxCurrencyEdit5: TcxCurrencyEdit;
    cxCurrencyEdit6: TcxCurrencyEdit;
    cxButtonEdit5: TcxButtonEdit;
    cxButtonEdit7: TcxButtonEdit;
    cxButtonEdit8: TcxButtonEdit;
    cxButtonEdit9: TcxButtonEdit;
    cxButtonEdit12: TcxButtonEdit;
    cxCurrencyEdit10: TcxCurrencyEdit;
    cxCurrencyEdit9: TcxCurrencyEdit;
    cxCurrencyEdit8: TcxCurrencyEdit;
    cxCurrencyEdit7: TcxCurrencyEdit;
    cxButtonEdit13: TcxButtonEdit;
    Panel3: TPanel;
    Label33: TLabel;
    Label32: TLabel;
    Label31: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    Label27: TLabel;
    Label26: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    Label23: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    cxCurrencyEdit21: TcxCurrencyEdit;
    cxCurrencyEdit20: TcxCurrencyEdit;
    cxCurrencyEdit19: TcxCurrencyEdit;
    cxCurrencyEdit18: TcxCurrencyEdit;
    cxCurrencyEdit17: TcxCurrencyEdit;
    cxCurrencyEdit16: TcxCurrencyEdit;
    cxCurrencyEdit15: TcxCurrencyEdit;
    cxCurrencyEdit14: TcxCurrencyEdit;
    cxTextEdit4: TcxTextEdit;
    cxCurrencyEdit13: TcxCurrencyEdit;
    cxCurrencyEdit12: TcxCurrencyEdit;
    cxButtonEdit11: TcxButtonEdit;
    cxButtonEdit10: TcxButtonEdit;
    cxCurrencyEdit11: TcxCurrencyEdit;
    cxButtonEdit15: TcxButtonEdit;
    cxTextEdit5: TcxTextEdit;
    cxCurrencyEdit22: TcxCurrencyEdit;
    cxCurrencyEdit23: TcxCurrencyEdit;
    cxCurrencyEdit24: TcxCurrencyEdit;
    cxCurrencyEdit25: TcxCurrencyEdit;
    cxTextEdit6: TcxTextEdit;
    Panel1: TPanel;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Panel4: TPanel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxGrid6: TcxGrid;
    cxGridDBBandedTableView50: TcxGridDBBandedTableView;
    cxGridDBBandedTableView50id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView50car_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView50spcTranspClauseID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView50spcTranspClauseName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView50spcCustomText: TcxGridDBBandedColumn;
    cxGridLevel5: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBBandedTableView60: TcxGridDBBandedTableView;
    cxGridDBBandedTableView60id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60car_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealMarks: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealQuantity: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealYear: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealOwnerTypeID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealOwnerTypeName: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealRailwayID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView60sealRailwayName: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet3: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView70: TcxGridDBBandedTableView;
    cxGridDBBandedTableView70id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView70car_id: TcxGridDBBandedColumn;
    cxGridDBBandedTableView70guideFIO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView70guidePassportSer: TcxGridDBBandedColumn;
    cxGridDBBandedTableView70guidePassportNum: TcxGridDBBandedColumn;
    cxGridDBBandedTableView70guideWarrantNum: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmECPClmOtpr: TfmECPClmOtpr;

implementation

{$R *.dfm}

end.
