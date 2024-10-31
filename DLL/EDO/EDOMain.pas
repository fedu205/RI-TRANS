unit EDOMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  ExtCtrls, dxBar, ADODB, Default, Raznoe, cxCurrencyEdit, ImgList, dxCore,
  cxPropertiesStore, Period, ShellApi, SOAPHTTPTrans, dxGDIPlusClasses, dxGDIPlusAPI,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxNavigator,
  dxSkinsdxBarPainter, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, System.ImageList,
  cxDataControllerConditionalFormattingRulesManagerDialog, cxImageList,
  dxSkinTheBezier, dxDateRanges, cxGridDBTableView;

type
  TfmEDOMain = class(TForm)
    EDO: TADOConnection;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarSubItem3: TdxBarSubItem;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    dxBarButton8: TdxBarButton;
    dxBarButton9: TdxBarButton;
    dxBarSubItem4: TdxBarSubItem;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarButton12: TdxBarButton;
    dxBarButton13: TdxBarButton;
    dxBarButton14: TdxBarButton;
    dxBarSubItem5: TdxBarSubItem;
    dxBarButton15: TdxBarButton;
    dxBarButton16: TdxBarButton;
    dxBarButton17: TdxBarButton;
    dxBarButton18: TdxBarButton;
    dxBarButton19: TdxBarButton;
    dxBarButton20: TdxBarButton;
    Panel1: TPanel;
    cxPageControl1: TcxPageControl;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1Level1: TcxGridLevel;
    Query_EDO: TADOQuery;
    DS_EDO: TDataSource;
    cxImageList1: TcxImageList;
    cxPropertiesStore1: TcxPropertiesStore;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    Splitter1: TSplitter;
    cxTabSheet1: TcxTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    cxTabSheet10: TcxTabSheet;
    cxTabSheet11: TcxTabSheet;
    cxTabSheet12: TcxTabSheet;
    cxTabSheet13: TcxTabSheet;
    cxGrid3: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridLevel2: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGridDBBandedTableView3: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGridDBBandedTableView4: TcxGridDBBandedTableView;
    cxGridLevel4: TcxGridLevel;
    cxGrid6: TcxGrid;
    cxGridDBBandedTableView5: TcxGridDBBandedTableView;
    cxGridLevel5: TcxGridLevel;
    cxGrid7: TcxGrid;
    cxGridDBBandedTableView6: TcxGridDBBandedTableView;
    cxGridLevel6: TcxGridLevel;
    cxGrid8: TcxGrid;
    cxGridDBBandedTableView7: TcxGridDBBandedTableView;
    cxGridLevel7: TcxGridLevel;
    cxGrid9: TcxGrid;
    cxGridDBBandedTableView8: TcxGridDBBandedTableView;
    cxGridLevel8: TcxGridLevel;
    cxGrid10: TcxGrid;
    cxGridDBBandedTableView9: TcxGridDBBandedTableView;
    cxGridLevel9: TcxGridLevel;
    cxGrid11: TcxGrid;
    cxGridDBBandedTableView10: TcxGridDBBandedTableView;
    cxGridLevel10: TcxGridLevel;
    cxGrid12: TcxGrid;
    cxGridDBBandedTableView11: TcxGridDBBandedTableView;
    cxGridLevel11: TcxGridLevel;
    cxGrid13: TcxGrid;
    cxGridDBBandedTableView12: TcxGridDBBandedTableView;
    cxGridLevel12: TcxGridLevel;
    cxGrid14: TcxGrid;
    cxGridDBBandedTableView13: TcxGridDBBandedTableView;
    cxGridLevel13: TcxGridLevel;
    Query1: TADOQuery;
    DS1: TDataSource;
    Query2: TADOQuery;
    DS2: TDataSource;
    Query3: TADOQuery;
    DS3: TDataSource;
    Query4: TADOQuery;
    DS4: TDataSource;
    Query5: TADOQuery;
    DS5: TDataSource;
    DS6: TDataSource;
    Query6: TADOQuery;
    Query7: TADOQuery;
    DS7: TDataSource;
    Query10: TADOQuery;
    DS10: TDataSource;
    DS9: TDataSource;
    Query9: TADOQuery;
    Query8: TADOQuery;
    DS8: TDataSource;
    Query11: TADOQuery;
    DS11: TDataSource;
    Query12: TADOQuery;
    DS12: TDataSource;
    Query13: TADOQuery;
    DS13: TDataSource;
    cxGrid1DBBandedTableView1EDO_docs_id: TcxGridDBBandedColumn;
    dxBarPopupMenu1: TdxBarPopupMenu;
    dxBarButton21: TdxBarButton;
    dxBarSubItem6: TdxBarSubItem;
    dxBarButton22: TdxBarButton;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    dxBarButton25: TdxBarButton;
    dxBarPopupMenu2: TdxBarPopupMenu;
    dxBarButton26: TdxBarButton;
    dxBarSubItem7: TdxBarSubItem;
    dxBarButton27: TdxBarButton;
    dxBarButton28: TdxBarButton;
    dxBarButton29: TdxBarButton;
    dxBarButton30: TdxBarButton;
    dxBarPopupMenu3: TdxBarPopupMenu;
    dxBarButton31: TdxBarButton;
    dxBarSubItem8: TdxBarSubItem;
    dxBarButton32: TdxBarButton;
    dxBarButton33: TdxBarButton;
    dxBarButton34: TdxBarButton;
    dxBarButton35: TdxBarButton;
    dxBarPopupMenu4: TdxBarPopupMenu;
    dxBarButton36: TdxBarButton;
    dxBarSubItem9: TdxBarSubItem;
    dxBarButton37: TdxBarButton;
    dxBarButton38: TdxBarButton;
    dxBarButton39: TdxBarButton;
    dxBarButton40: TdxBarButton;
    dxBarPopupMenu5: TdxBarPopupMenu;
    dxBarButton41: TdxBarButton;
    dxBarSubItem10: TdxBarSubItem;
    dxBarButton42: TdxBarButton;
    dxBarButton43: TdxBarButton;
    dxBarButton44: TdxBarButton;
    dxBarButton45: TdxBarButton;
    dxBarPopupMenu6: TdxBarPopupMenu;
    dxBarButton46: TdxBarButton;
    dxBarSubItem11: TdxBarSubItem;
    dxBarButton47: TdxBarButton;
    dxBarButton48: TdxBarButton;
    dxBarButton49: TdxBarButton;
    dxBarButton50: TdxBarButton;
    dxBarPopupMenu7: TdxBarPopupMenu;
    dxBarButton51: TdxBarButton;
    dxBarSubItem12: TdxBarSubItem;
    dxBarButton52: TdxBarButton;
    dxBarButton53: TdxBarButton;
    dxBarButton54: TdxBarButton;
    dxBarButton55: TdxBarButton;
    dxBarPopupMenu8: TdxBarPopupMenu;
    dxBarButton56: TdxBarButton;
    dxBarSubItem13: TdxBarSubItem;
    dxBarButton57: TdxBarButton;
    dxBarButton58: TdxBarButton;
    dxBarButton59: TdxBarButton;
    dxBarButton60: TdxBarButton;
    dxBarPopupMenu9: TdxBarPopupMenu;
    dxBarButton61: TdxBarButton;
    dxBarSubItem14: TdxBarSubItem;
    dxBarButton62: TdxBarButton;
    dxBarButton63: TdxBarButton;
    dxBarButton64: TdxBarButton;
    dxBarButton65: TdxBarButton;
    dxBarPopupMenu10: TdxBarPopupMenu;
    dxBarButton66: TdxBarButton;
    dxBarSubItem15: TdxBarSubItem;
    dxBarButton67: TdxBarButton;
    dxBarButton68: TdxBarButton;
    dxBarButton69: TdxBarButton;
    dxBarButton70: TdxBarButton;
    dxBarPopupMenu11: TdxBarPopupMenu;
    dxBarButton71: TdxBarButton;
    dxBarSubItem16: TdxBarSubItem;
    dxBarButton72: TdxBarButton;
    dxBarButton73: TdxBarButton;
    dxBarButton74: TdxBarButton;
    dxBarButton75: TdxBarButton;
    dxBarPopupMenu12: TdxBarPopupMenu;
    dxBarButton76: TdxBarButton;
    dxBarSubItem17: TdxBarSubItem;
    dxBarButton77: TdxBarButton;
    dxBarButton78: TdxBarButton;
    dxBarButton79: TdxBarButton;
    dxBarButton80: TdxBarButton;
    dxBarPopupMenu13: TdxBarPopupMenu;
    dxBarButton81: TdxBarButton;
    dxBarSubItem18: TdxBarSubItem;
    dxBarButton82: TdxBarButton;
    dxBarButton83: TdxBarButton;
    dxBarButton84: TdxBarButton;
    dxBarButton85: TdxBarButton;
    dxBarPopupMenu14: TdxBarPopupMenu;
    dxBarButton86: TdxBarButton;
    dxBarSubItem19: TdxBarSubItem;
    dxBarButton87: TdxBarButton;
    dxBarButton88: TdxBarButton;
    dxBarButton89: TdxBarButton;
    dxBarButton90: TdxBarButton;
    dxBarButton91: TdxBarButton;
    dxBarButton92: TdxBarButton;
    dxBarButton93: TdxBarButton;
    dxBarButton94: TdxBarButton;
    cxImageList2: TcxImageList;
    dxBarButton95: TdxBarButton;
    dxBarButton96: TdxBarButton;
    dxBarButton97: TdxBarButton;
    dxBarButton98: TdxBarButton;
    dxBarButton99: TdxBarButton;
    dxBarButton100: TdxBarButton;
    dxBarSubItem1: TdxBarSubItem;
    cxStyle3: TcxStyle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGrid1DBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGrid1DBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1FocusedRecordChanged(
      Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure cxGridDBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView1FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView2CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView2CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView2FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView2KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView3CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView3CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView3FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView3KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView4CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView4CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView4FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView4KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView5CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView5CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView5FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView5KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView6CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView6CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView6FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView6KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView7CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView7CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView7FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView7KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView8CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView8CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView8FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView8KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView9CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView9CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView9FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView9KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView10CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView10CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView10FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView10KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView11CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView11CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView11FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView11KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView12CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView12CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView12FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView12KeyPress(Sender: TObject; var Key: Char);
    procedure cxGridDBBandedTableView13CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView13CustomDrawColumnHeader(
      Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure cxGridDBBandedTableView13FocusedItemChanged(
      Sender: TcxCustomGridTableView; APrevFocusedItem,
      AFocusedItem: TcxCustomGridTableItem);
    procedure cxGridDBBandedTableView13KeyPress(Sender: TObject; var Key: Char);
    procedure dxBarButton21Click(Sender: TObject);
    procedure dxBarButton22Click(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure dxBarButton24Click(Sender: TObject);
    procedure dxBarButton25Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure dxBarButton27Click(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton29Click(Sender: TObject);
    procedure dxBarButton30Click(Sender: TObject);
    procedure dxBarButton31Click(Sender: TObject);
    procedure dxBarButton32Click(Sender: TObject);
    procedure dxBarButton33Click(Sender: TObject);
    procedure dxBarButton34Click(Sender: TObject);
    procedure dxBarButton35Click(Sender: TObject);
    procedure dxBarButton36Click(Sender: TObject);
    procedure dxBarButton37Click(Sender: TObject);
    procedure dxBarButton38Click(Sender: TObject);
    procedure dxBarButton39Click(Sender: TObject);
    procedure dxBarButton40Click(Sender: TObject);
    procedure dxBarButton41Click(Sender: TObject);
    procedure dxBarButton42Click(Sender: TObject);
    procedure dxBarButton43Click(Sender: TObject);
    procedure dxBarButton44Click(Sender: TObject);
    procedure dxBarButton45Click(Sender: TObject);
    procedure dxBarButton46Click(Sender: TObject);
    procedure dxBarButton47Click(Sender: TObject);
    procedure dxBarButton48Click(Sender: TObject);
    procedure dxBarButton49Click(Sender: TObject);
    procedure dxBarButton50Click(Sender: TObject);
    procedure dxBarButton51Click(Sender: TObject);
    procedure dxBarButton52Click(Sender: TObject);
    procedure dxBarButton53Click(Sender: TObject);
    procedure dxBarButton54Click(Sender: TObject);
    procedure dxBarButton55Click(Sender: TObject);
    procedure dxBarButton56Click(Sender: TObject);
    procedure dxBarButton57Click(Sender: TObject);
    procedure dxBarButton58Click(Sender: TObject);
    procedure dxBarButton59Click(Sender: TObject);
    procedure dxBarButton60Click(Sender: TObject);
    procedure dxBarButton61Click(Sender: TObject);
    procedure dxBarButton62Click(Sender: TObject);
    procedure dxBarButton63Click(Sender: TObject);
    procedure dxBarButton64Click(Sender: TObject);
    procedure dxBarButton65Click(Sender: TObject);
    procedure dxBarButton66Click(Sender: TObject);
    procedure dxBarButton67Click(Sender: TObject);
    procedure dxBarButton68Click(Sender: TObject);
    procedure dxBarButton69Click(Sender: TObject);
    procedure dxBarButton70Click(Sender: TObject);
    procedure dxBarButton71Click(Sender: TObject);
    procedure dxBarButton72Click(Sender: TObject);
    procedure dxBarButton73Click(Sender: TObject);
    procedure dxBarButton74Click(Sender: TObject);
    procedure dxBarButton75Click(Sender: TObject);
    procedure dxBarButton76Click(Sender: TObject);
    procedure dxBarButton77Click(Sender: TObject);
    procedure dxBarButton78Click(Sender: TObject);
    procedure dxBarButton79Click(Sender: TObject);
    procedure dxBarButton80Click(Sender: TObject);
    procedure dxBarButton81Click(Sender: TObject);
    procedure dxBarButton82Click(Sender: TObject);
    procedure dxBarButton83Click(Sender: TObject);
    procedure dxBarButton84Click(Sender: TObject);
    procedure dxBarButton85Click(Sender: TObject);
    procedure dxBarButton86Click(Sender: TObject);
    procedure dxBarButton87Click(Sender: TObject);
    procedure dxBarButton88Click(Sender: TObject);
    procedure dxBarButton89Click(Sender: TObject);
    procedure dxBarButton90Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dxBarButton91Click(Sender: TObject);
    procedure dxBarButton92Click(Sender: TObject);
    procedure dxBarButton93Click(Sender: TObject);
    procedure dxBarButton94Click(Sender: TObject);
    procedure dxBarPopupMenu14Popup(Sender: TObject);
    procedure EDOExecuteComplete(Connection: TADOConnection;
      RecordsAffected: Integer; const Error: Error;
      var EventStatus: TEventStatus; const Command: _Command;
      const Recordset: _Recordset);
    procedure dxBarButton95Click(Sender: TObject);
    procedure dxBarPopupMenu1Popup(Sender: TObject);
    procedure cxGrid1DBBandedTableView1DblClick(Sender: TObject);
    procedure cxGridDBBandedTableView1DblClick(Sender: TObject);
    procedure dxBarButton96Click(Sender: TObject);
    procedure dxBarButton97Click(Sender: TObject);
    procedure dxBarButton99Click(Sender: TObject);
  private
    Fusr_pwd         : PUser_pwd;
    Fdate1, Fdate2   : TDateTime;
    Fdoc_type        : string;
    FEDO_id_pak      : string;

    Fcount_detail_grid : integer;

    procedure CreateColumn(doc_name: string);
  public
    constructor Create(AOwner: TApplication; usr_pwd: PUser_pwd; doc_type: string; EDO_id_pak :string);
  end;

var
  fmEDOMain: TfmEDOMain;

function CreateWndEDOMain(AppHand: THandle; usr_pwd: PUser_pwd; doc_type: string; EDO_id_pak :string): variant; export;

implementation

{$R *.dfm}

function CreateWndEDOMain(AppHand: THandle; usr_pwd: PUser_pwd; doc_type: string; EDO_id_pak :string): variant;
begin
  Application.Handle := AppHand;
  try
    fmEDOMain := TfmEDOMain.Create(Application, usr_pwd, doc_type, EDO_id_pak);
    //-- изменить по мере необходимости возвращаемых параметров
    if  fmEDOMain.ShowModal = mrOk then result := VarArrayOf([-9, '']);
  finally
    fmEDOMain.Free;
  end;
end;

constructor TfmEDOMain.Create(AOwner: TApplication; usr_pwd: PUser_pwd; doc_type: string; EDO_id_pak :string);
begin
  Screen.Cursor := -11;
  inherited Create(nil);

  WindowState := wsMaximized;
  Fusr_pwd := usr_pwd;

  EDO.Connected := False;
  EDO.ConnectionString := 'Persist Security Info=True;Provider=SQLOLEDB.1;User ID='+usr_pwd^.user_name+';Password='+usr_pwd^.user_pass+';Initial Catalog='+usr_pwd^.catalog+';Data Source='+usr_pwd^.server+';';
  EDO.Connected := True;

  dxBarSubItem2.Caption := StoreRegistryDate(rgLoad, '\Software\Lis1\DateTime\TfmEDOMain', Fdate1, Fdate2);

  Fcount_detail_grid := 0;

  Fdoc_type := doc_type;
  FEDO_id_pak := '-9';
  FEDO_id_pak := iif(EDO_id_pak = '', '-9', EDO_id_pak);
  CreateColumn(Fdoc_type);

  cxGrid1DBBandedTableView1.OnFocusedRecordChanged := nil;
  Query_EDO.Close;

  if Query_EDO.Parameters.FindParam('date1') <> nil then begin
    Query_EDO.Parameters.ParamByName('date1').Value := Fdate1;
    Query_EDO.Parameters.ParamByName('date2').Value := Fdate2;
  end;

  Query_EDO.Open;
  cxGrid1DBBandedTableView1.OnFocusedRecordChanged := cxGrid1DBBandedTableView1FocusedRecordChanged;

  if Fdoc_type = 'ФПУ-26'                  then StoreRegistryGrid(rgLoad,'\Software\Lis1\TfmEDO_FPU26_Grids\MainGrids', cxGrid1DBBandedTableView1);
  if Fdoc_type = 'Акт браковки'            then StoreRegistryGrid(rgLoad,'\Software\Lis1\TfmEDO_ACT_reject_Grids\MainGrids', cxGrid1DBBandedTableView1);
  if Fdoc_type = 'Акт приема передачи ТМЦ' then StoreRegistryGrid(rgLoad,'\Software\Lis1\EDO_ACT_accept_Grids\MainGrids', cxGrid1DBBandedTableView1);
  if Fdoc_type = 'ВУ-23_О'                 then StoreRegistryGrid(rgLoad,'\Software\Lis1\TfmEDO_VU_23_Grids\MainGrids', cxGrid1DBBandedTableView1);
  if Fdoc_type = 'ВУ-36М_О'                then StoreRegistryGrid(rgLoad,'\Software\Lis1\TfmEDO_VU_36_Grids\MainGrids', cxGrid1DBBandedTableView1);
  if Fdoc_type = 'МХ-1'                    then StoreRegistryGrid(rgLoad,'\Software\Lis1\TfmEDO_MX1_Grids\MainGrids', cxGrid1DBBandedTableView1);
  if Fdoc_type = 'МХ-3'                    then StoreRegistryGrid(rgLoad,'\Software\Lis1\TfmEDO_MX3_Grids\MainGrids', cxGrid1DBBandedTableView1);
  if Fdoc_type = 'Пакет документов'        then StoreRegistryGrid(rgLoad,'\Software\Lis1\TfmEDO_DOCS_LIST_Grids\MainGrids', cxGrid1DBBandedTableView1, 1);
  if Fdoc_type = 'РДВ'                     then StoreRegistryGrid(rgLoad,'\Software\Lis1\TfmEDO_RDV_Grids\MainGrids', cxGrid1DBBandedTableView1);
  if Fdoc_type = 'Расчет стоимости услуг по хранению' then StoreRegistryGrid(rgLoad,'\Software\Lis1\TfmEDO_RSH_Grids\MainGrids', cxGrid1DBBandedTableView1);

  Caption := Fdoc_type;

  Screen.Cursor := 0;
end;

procedure TfmEDOMain.CreateColumn(doc_name: string);
var Q, Q2: TADOQuery;
    column  : TcxGridDBBandedColumn;
    str_sql  : string;
    str_type : string;
    str_tmp : string;
    i : integer;

    cxGridDBBandedTableView : TcxGridDBBandedTableView;
begin
  Q := TADOQuery.Create(nil);
  Q.Connection := EDO;

  Q2  := TADOQuery.Create(nil);
  Q2.Connection := EDO;

  Q.SQL.Add('SELECT	*');
  Q.SQL.Add('FROM	[dbo].[EDO_description]');
  Q.SQL.Add('WHERE	EDO_type = ''' + doc_name + ''' AND isnull(table_name,'''') = ''''');
  Q.SQL.Add('ORDER BY 1');
  Q.Open;


  column := cxGrid1DBBandedTableView1.CreateColumn;
  column.DataBinding.FieldName := 'EDO_docid';
  column.Caption  := '№ записи ЭДО';
  column.Name     := 'cxGrid1DBBandedTableView1EDO_docid';
  column.Width    := 70;
  column.HeaderAlignmentVert := vaTop;

  if Fdoc_type = 'Пакет документов' then begin
    column := cxGrid1DBBandedTableView1.CreateColumn;
    column.DataBinding.FieldName := 'depo_rdv';
    column.Caption  := 'Депо';
    column.Name     := 'cxGrid1DBBandedTableView1depo_rdv';
    column.Width    := 70;
    column.HeaderAlignmentVert := vaTop;

    column := cxGrid1DBBandedTableView1.CreateColumn;
    column.DataBinding.FieldName := 'P_23_name';
    column.Caption  := 'Наименование услуги';
    column.Name     := 'cxGrid1DBBandedTableView1P_23_name';
    column.Width    := 100;
    column.HeaderAlignmentVert := vaTop;
  end;



  column := cxGrid1DBBandedTableView1.CreateColumn;
  column.DataBinding.FieldName := 'EDO_status_name';
  column.Caption  := 'Статус';
  column.Name     := 'cxGrid1DBBandedTableView1EDO_status_name';
  column.Width    := 70;
  column.HeaderAlignmentVert := vaTop;

  column := cxGrid1DBBandedTableView1.CreateColumn;
  column.DataBinding.FieldName := 'fact_repair_id';
  column.Caption  := '№ записи (Карточка ремонта)';
  column.Name     := 'cxGrid1DBBandedTableView1fact_repair_id';
  column.Width    := 70;
  column.HeaderAlignmentVert := vaTop;
  column.Styles.Content := cxStyle2;



  while not Q.Eof do begin
    column := cxGrid1DBBandedTableView1.CreateColumn;
    column.DataBinding.FieldName := Q.FieldByName('field_name').AsString;
    column.Caption  := Q.FieldByName('field_description').AsString;
    column.Tag      := Q.FieldByName('EDO_description_id').AsInteger;
    column.Name     := 'cxGrid1DBBandedTableView1' + Q.FieldByName('field_name').AsString;
    column.Width    := 70;
    column.HeaderAlignmentVert := vaTop;

    if Q.FieldByName('field_type').AsString = 'float' then begin
      column.PropertiesClassName := 'TcxCurrencyEditProperties';
      TcxCurrencyEditProperties(column.Properties).DisplayFormat := '#,##0.00';
    end;


    if Fdoc_type = 'Пакет документов' then begin
      if Q.FieldByName('field_name').AsString = 'P_27' then begin
        column.Styles.Content := cxStyle3;
        TcxGridDBTableSummaryItem(cxGrid1DBBandedTableView1.DataController.Summary.FooterSummaryItems[1]).Column := column;
      end;

      if Q.FieldByName('field_name').AsString = 'P_15' then begin
        column.Styles.Content := cxStyle2;
      end;
    end;

    Q.Next;
  end;

  Q.First;
  str_sql := '';
  while not Q.Eof do begin
    str_type := Q.FieldByName('field_type').AsString;
    if str_type = 'varchar(max)' then str_type := 'varchar(3000)';
    str_sql := str_sql + 'EDO_xml.value(''(/data/' + Q.FieldByName('field_name').AsString + ')[1]'',''' + str_type + ''') as ' + Q.FieldByName('field_name').AsString + ',' + #10;
    Q.Next;
  end;

  if Fdoc_type = 'Пакет документов' then begin
    str_tmp :=  'DECLARE @date1 datetime, @date2 datetime' + #10 +
                'SET @date1 = :date1'+ #10 +
                'SET @date2 = :date2'+ #10 +
                'SELECT	EDO_docid, EDO_xml.value(''(/data/P_10)[1]'',''varchar(max)'')  depo_rdv INTO #rdv' + #10 +
                'FROM	EDO_docs' + #10 +
                'WHERE	EDO_type = ''РДВ'' AND EDO_docid in' + #10 +
                '(' + #10 +
                'SELECT' + #10 +
                '	(' + #10 +
                '		SELECT	top 1 ref.value(''(P_3a)[1]'',''bigint'') as P_3a' + #10 +
                '		FROM	EDO_xml.nodes(''/data/table1/row'') as node(ref)' + #10 +
                '		WHERE	ref.value(''(P_2)[1]'',''varchar(max)'') = ''РДВ ЭТД''' + #10 +
                '	) rdv_id' + #10 +
                'FROM' + #10 +
                '		EDO_docs' + #10 +
                '		left join EDO_link on EDO_docs.EDO_docs_id = EDO_link.EDO_docs_id' + #10 +
                'WHERE' + #10 +
                '		EDO_type = ''Пакет документов''' + #10 +
                '		AND EDO_xml.value(''(/data/P_5)[1]'',''datetime'')  between @date1 and @date2 ' +
                ')' + #10;
//     if  FEDO_id_pak <> '-9' then begin
//      str_tmp := str_tmp + ' AND EDO_docs.EDO_id_pak = ' + FEDO_id_pak;
//    end;

    str_sql := str_tmp +
               'SELECT x1.*, depo_rdv, ' +
              ' case ' +
              ' when P_23 = ''01'' then ''ТР-1'' ' +
              ' when P_23 = ''02'' then ''ТР-2'' ' +
              ' when P_23 = ''03'' then ''Рекламация'' ' +
              ' when P_23 = ''04'' then ''Хранение запасных частей и лома'' ' +
              ' when P_23 = ''05'' then ''Погрузка\выгрузка'' ' +
              ' when P_23 = ''06'' then ''Продажа деталей Заказчика Подрядчику'' ' +
              ' when P_23 = ''07'' then ''Претензионная работа'' ' +
              ' end P_23_name ' +
               ' FROM ( ' +
               ' SELECT	EDO_docid, EDO_docs.EDO_docs_id, EDO_docs.EDO_id_pak,' + str_sql + ' EDO_link.fact_repair_id, EDO_status_name, ' +
           		 ' (	SELECT	top 1 ref.value(''(P_3a)[1]'',''bigint'') as P_3a ' +
           		 '	  FROM	EDO_xml.nodes(''/data/table1/row'') as node(ref)   ' +
          		 '   	WHERE	ref.value(''(P_2)[1]'',''varchar(max)'') = ''РДВ ЭТД'' ' +
               ' ) rdv_id ' +
               ' FROM	EDO_docs left join EDO_link on EDO_docs.EDO_docs_id = EDO_link.EDO_docs_id' +
               ' WHERE	EDO_type = ''' + Fdoc_type + ''' ' ;

               if  FEDO_id_pak <> '-9' then begin
                str_sql := str_sql + ' AND EDO_docs.EDO_id_pak = ' + (FEDO_id_pak);
               end;

               str_sql := str_sql +
	             '        AND EDO_xml.value(''(/data/P_5)[1]'',''datetime'') between @date1 and @date2 ' +
               ' ) x1 left join #rdv on x1.rdv_id = #rdv.EDO_docid  ' +
               ' DROP TABLE #rdv';

  end else begin
    str_sql :=  ' SELECT	EDO_docid, EDO_docs.EDO_docs_id, ' + str_sql + ' EDO_link.fact_repair_id, EDO_status_name ' +
                ' FROM	EDO_docs left join EDO_link on EDO_docs.EDO_docs_id = EDO_link.EDO_docs_id ' +
                ' WHERE	EDO_type = ''' + Fdoc_type + '''';

    if Fdoc_type = 'ФПУ-26' then
      str_sql := str_sql + ' AND EDO_xml.value(''(/data/P_8)[1]'',''datetime'') between :date1 and :date2';
    if Fdoc_type = 'Расчет стоимости услуг по хранению' then
      str_sql := str_sql + ' AND EDO_xml.value(''(/data/P_2)[1]'',''datetime'') between :date1 and :date2';
    if  FEDO_id_pak <> '-9' then begin
      str_sql := str_sql + ' AND EDO_docs.EDO_id_pak = ' + FEDO_id_pak;
    end;
  end;

  Query_EDO.SQL.Clear;


  Query_EDO.SQL.Text := str_sql;
  Q.SQL.Clear;
  Q.SQL.Add('SELECT	DISTINCT table_name');
  Q.SQL.Add('FROM	[dbo].[EDO_description]');
  Q.SQL.Add('WHERE	EDO_type = ''' + doc_name + ''' AND isnull(table_name,'''') <> ''''');
  Q.SQL.Add('ORDER BY 1');
  Q.Open;

  Fcount_detail_grid := Q.RecordCount;

  for i:=0 to cxPageControl1.PageCount-1 do begin
    cxPageControl1.Pages[i].TabVisible := False;
    cxPageControl1.Pages[i].Visible    := False;
  end;

  while not Q.Eof do begin
    cxPageControl1.Pages[Q.RecNo-1].TabVisible := True;
    cxPageControl1.Pages[Q.RecNo-1].Visible    := True;
    cxPageControl1.Pages[Q.RecNo-1].Caption    := 'Таблица №' + IntToStr(Q.RecNo);

    if FindComponent('cxGridDBBandedTableView' + IntToStr(Q.RecNo)) <> nil then begin
      cxGridDBBandedTableView := TcxGridDBBandedTableView(FindComponent('cxGridDBBandedTableView' + IntToStr(Q.RecNo)));
    end;

    Q2.SQL.Clear;
    Q2.SQL.Add('SELECT	* ');
    Q2.SQL.Add('FROM	[dbo].[EDO_description]');
    Q2.SQL.Add('WHERE	EDO_type = ''' + doc_name + ''' AND isnull(table_name,'''') = ''' + Q.FieldByName('table_name').AsString  + '''');
    Q2.SQL.Add('ORDER BY 1');
    Q2.Open;

    while not Q2.Eof do begin
      column := cxGridDBBandedTableView.CreateColumn;
      column.DataBinding.FieldName := Q2.FieldByName('field_name').AsString;
      column.Caption  := Q2.FieldByName('field_description').AsString;
      column.Tag      := Q2.FieldByName('EDO_description_id').AsInteger;
      column.Name     := cxGridDBBandedTableView.Name + Q2.FieldByName('field_name').AsString;
      column.Width    := 120;
      column.HeaderAlignmentVert := vaTop;

      if Q2.FieldByName('field_type').AsString = 'float' then begin
        column.PropertiesClassName := 'TcxCurrencyEditProperties';
        TcxCurrencyEditProperties(column.Properties).DisplayFormat := '#,##0.00';
      end;

      Q2.Next;
    end;


    Q2.First;
    str_sql := '';
    while not Q2.Eof do begin
      str_type := Q2.FieldByName('field_type').AsString;
      if str_type = 'varchar(max)' then str_type := 'varchar(3000)';
      str_sql := str_sql + 'ref.value(''(' + Q2.FieldByName('field_name').AsString + ')[1]'',''' + str_type + ''') as ' + Q2.FieldByName('field_name').AsString + ',';
      Q2.Next;
    end;

    Delete(str_sql, Length(str_sql), 1);

    str_sql := ' DECLARE @xml xml ' + #10 +
               ' SELECT @xml = EDO_xml FROM EDO_docs WHERE EDO_docs_id = :EDO_docs_id ' + #10 +
               ' SELECT ' + str_sql + ' FROM @xml.nodes(''/data/' + Q.FieldByName('table_name').AsString + '/row'') as node(ref)';


    if FindComponent('Query' + IntToStr(Q.RecNo)) <> nil then begin
      TADOQuery(FindComponent('Query' + IntToStr(Q.RecNo))).SQL.Text := str_sql;
    end;

    Q.Next;
  end;

  cxPageControl1.ActivePageIndex := 0;

  Q2.Free;
  Q.Free;
end;

procedure TfmEDOMain.cxGrid1DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEDOMain.cxGrid1DBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEDOMain.cxGrid1DBBandedTableView1DblClick(Sender: TObject);
begin
  if Fdoc_type = 'Пакет документов' then begin
    dxBarButton93Click(Sender);
  end;
end;

procedure TfmEDOMain.cxGrid1DBBandedTableView1FilterOnChanged(Sender: TObject);
begin
	DrawcxGridColumnOnFiltered(cxGrid1DBBandedTableView1, Sender);
end;

procedure TfmEDOMain.cxGrid1DBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGrid1DBBandedTableView1.Painter.Invalidate;
end;

procedure TfmEDOMain.cxGrid1DBBandedTableView1FocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  i : integer;
begin
  for i := 1 to Fcount_detail_grid do begin
    if FindComponent('Query' + IntToStr(i)) <> nil then begin
      TADOQuery(FindComponent('Query' + IntToStr(i))).Close;
    end;
  end;

  if (AFocusedRecord<>nil) AND ((cxGrid1DBBandedTableView1.GroupedColumnCount = 0) OR (AFocusedRecord.Level <> 0)) then begin

    for i := 1 to Fcount_detail_grid do begin
      if FindComponent('Query' + IntToStr(i)) <> nil then begin
        TADOQuery(FindComponent('Query' + IntToStr(i))).Parameters.ParamByName('EDO_docs_id').Value := AFocusedRecord.Values[cxGrid1DBBandedTableView1EDO_docs_id.Index]
      end;
    end;

    for i := 1 to Fcount_detail_grid do begin
      if FindComponent('Query' + IntToStr(i)) <> nil then begin
        TADOQuery(FindComponent('Query' + IntToStr(i))).Open;
      end;
    end;
  end;
end;

procedure TfmEDOMain.cxGrid1DBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGrid1DBBandedTableView1, Key);
end;

procedure TfmEDOMain.cxGridDBBandedTableView10CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView10CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView10FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView10.Painter.Invalidate;
end;

procedure TfmEDOMain.cxGridDBBandedTableView10KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView10, Key);
end;

procedure TfmEDOMain.cxGridDBBandedTableView11CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView11CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView11FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView11.Painter.Invalidate;
end;

procedure TfmEDOMain.cxGridDBBandedTableView11KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView11, Key);
end;

procedure TfmEDOMain.cxGridDBBandedTableView12CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView12CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView12FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView12.Painter.Invalidate;
end;

procedure TfmEDOMain.cxGridDBBandedTableView12KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView12, Key);
end;

procedure TfmEDOMain.cxGridDBBandedTableView13CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView13CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView13FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView13.Painter.Invalidate;
end;

procedure TfmEDOMain.cxGridDBBandedTableView13KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView13, Key);
end;

procedure TfmEDOMain.cxGridDBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView1CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView1DblClick(Sender: TObject);
begin
  if Fdoc_type = 'Пакет документов' then begin
    dxBarButton95Click(Sender);
  end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView1FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView1.Painter.Invalidate;
end;

procedure TfmEDOMain.cxGridDBBandedTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView1, Key);
end;

procedure TfmEDOMain.cxGridDBBandedTableView2CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView2CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView2FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView2.Painter.Invalidate;
end;

procedure TfmEDOMain.cxGridDBBandedTableView2KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView2, Key);
end;

procedure TfmEDOMain.cxGridDBBandedTableView3CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView3CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView3FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView3.Painter.Invalidate;
end;

procedure TfmEDOMain.cxGridDBBandedTableView3KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView3, Key);
end;

procedure TfmEDOMain.cxGridDBBandedTableView4CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView4CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView4FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView4.Painter.Invalidate;
end;

procedure TfmEDOMain.cxGridDBBandedTableView4KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView4, Key);
end;

procedure TfmEDOMain.cxGridDBBandedTableView5CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView5CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView5FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView5.Painter.Invalidate;
end;

procedure TfmEDOMain.cxGridDBBandedTableView5KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView5, Key);
end;

procedure TfmEDOMain.cxGridDBBandedTableView6CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView6CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView6FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView6.Painter.Invalidate;
end;

procedure TfmEDOMain.cxGridDBBandedTableView6KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView6, Key);
end;

procedure TfmEDOMain.cxGridDBBandedTableView7CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView7CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView7FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView7.Painter.Invalidate;
end;

procedure TfmEDOMain.cxGridDBBandedTableView7KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView7, Key);
end;

procedure TfmEDOMain.cxGridDBBandedTableView8CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView8CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView8FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView8.Painter.Invalidate;
end;

procedure TfmEDOMain.cxGridDBBandedTableView8KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView8, Key);
end;

procedure TfmEDOMain.cxGridDBBandedTableView9CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
	if AViewInfo.GridRecord.Selected or AViewInfo.GridRecord.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
		if AViewInfo.Focused then ACanvas.Brush.Color := clBlue;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView9CustomDrawColumnHeader(
  Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
	if AViewInfo.Column.Focused then begin
		ACanvas.Brush.Color := clNavy;
		ACanvas.Font.Color := clWhite;
	end;
end;

procedure TfmEDOMain.cxGridDBBandedTableView9FocusedItemChanged(
  Sender: TcxCustomGridTableView; APrevFocusedItem,
  AFocusedItem: TcxCustomGridTableItem);
begin
	cxGridDBBandedTableView9.Painter.Invalidate;
end;

procedure TfmEDOMain.cxGridDBBandedTableView9KeyPress(Sender: TObject;
  var Key: Char);
begin
	FilterColumnGridOnKeyPress(cxGridDBBandedTableView9, Key);
end;

procedure TfmEDOMain.dxBarButton1Click(Sender: TObject);
begin
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'EDO_docs_id');
end;

procedure TfmEDOMain.dxBarButton21Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView1);
end;

procedure TfmEDOMain.dxBarButton22Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView1);
end;

procedure TfmEDOMain.dxBarButton23Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.OptionsView.GroupByBox := not cxGridDBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEDOMain.dxBarButton24Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView1);
end;

procedure TfmEDOMain.dxBarButton25Click(Sender: TObject);
begin
	cxGridDBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton25.Down;
end;

procedure TfmEDOMain.dxBarButton26Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView2);
end;

procedure TfmEDOMain.dxBarButton27Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView2);
end;

procedure TfmEDOMain.dxBarButton28Click(Sender: TObject);
begin
	cxGridDBBandedTableView2.OptionsView.GroupByBox := not cxGridDBBandedTableView2.OptionsView.GroupByBox;
end;

procedure TfmEDOMain.dxBarButton29Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView2);
end;

procedure TfmEDOMain.dxBarButton2Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 3);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonth;
    Fdate2 := IncMonth(Fdate1, 1);
    dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);
    Screen.Cursor := crHourGlass;
    Query_EDO.Close;
    if Query_EDO.Parameters.FindParam('date1') <> nil then begin
      Query_EDO.Parameters.ParamByName('date1').Value := Fdate1;
      Query_EDO.Parameters.ParamByName('date2').Value := Fdate2;
    end;
    Query_EDO.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEDOMain.dxBarButton30Click(Sender: TObject);
begin
	cxGridDBBandedTableView2.Filtering.ColumnFilteredItemsList := not dxBarButton30.Down;
end;

procedure TfmEDOMain.dxBarButton31Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView3);
end;

procedure TfmEDOMain.dxBarButton32Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView3);
end;

procedure TfmEDOMain.dxBarButton33Click(Sender: TObject);
begin
	cxGridDBBandedTableView3.OptionsView.GroupByBox := not cxGridDBBandedTableView3.OptionsView.GroupByBox;
end;

procedure TfmEDOMain.dxBarButton34Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView3);
end;

procedure TfmEDOMain.dxBarButton35Click(Sender: TObject);
begin
	cxGridDBBandedTableView3.Filtering.ColumnFilteredItemsList := not dxBarButton35.Down;
end;

procedure TfmEDOMain.dxBarButton36Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView4);
end;

procedure TfmEDOMain.dxBarButton37Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView4);
end;

procedure TfmEDOMain.dxBarButton38Click(Sender: TObject);
begin
	cxGridDBBandedTableView4.OptionsView.GroupByBox := not cxGridDBBandedTableView4.OptionsView.GroupByBox;
end;

procedure TfmEDOMain.dxBarButton39Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView4);
end;

procedure TfmEDOMain.dxBarButton3Click(Sender: TObject);
begin
  fmPeriod := TfmPeriod.Create(Application, Fdate1, Fdate2, 2);
  if fmPeriod.ShowModal=mrOK then begin
    Fdate1 := fmPeriod._GetMonthBegin;
    Fdate2 := fmPeriod._GetMonthEnd;
    dxBarSubItem2.Caption := FormatDateTime('mmm yy', Fdate1) + ' - ' + FormatDateTime('mmm yy', Fdate2);
    Screen.Cursor := crHourGlass;
    Query_EDO.Close;
    if Query_EDO.Parameters.FindParam('date1') <> nil then begin
      Query_EDO.Parameters.ParamByName('date1').Value := Fdate1;
      Query_EDO.Parameters.ParamByName('date2').Value := Fdate2;
    end;
    Query_EDO.Open;
    Screen.Cursor := crDefault;
  end;
end;

procedure TfmEDOMain.dxBarButton40Click(Sender: TObject);
begin
	cxGridDBBandedTableView4.Filtering.ColumnFilteredItemsList := not dxBarButton40.Down;
end;

procedure TfmEDOMain.dxBarButton41Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView5);
end;

procedure TfmEDOMain.dxBarButton42Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView5);
end;

procedure TfmEDOMain.dxBarButton43Click(Sender: TObject);
begin
	cxGridDBBandedTableView5.OptionsView.GroupByBox := not cxGridDBBandedTableView5.OptionsView.GroupByBox;
end;

procedure TfmEDOMain.dxBarButton44Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView5);
end;

procedure TfmEDOMain.dxBarButton45Click(Sender: TObject);
begin
	cxGridDBBandedTableView5.Filtering.ColumnFilteredItemsList := not dxBarButton45.Down;
end;

procedure TfmEDOMain.dxBarButton46Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView6);
end;

procedure TfmEDOMain.dxBarButton47Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView6);
end;

procedure TfmEDOMain.dxBarButton48Click(Sender: TObject);
begin
	cxGridDBBandedTableView6.OptionsView.GroupByBox := not cxGridDBBandedTableView6.OptionsView.GroupByBox;
end;

procedure TfmEDOMain.dxBarButton49Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView6);
end;

procedure TfmEDOMain.dxBarButton50Click(Sender: TObject);
begin
	cxGridDBBandedTableView6.Filtering.ColumnFilteredItemsList := not dxBarButton50.Down;
end;

procedure TfmEDOMain.dxBarButton51Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView7);
end;

procedure TfmEDOMain.dxBarButton52Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView7);
end;

procedure TfmEDOMain.dxBarButton53Click(Sender: TObject);
begin
	cxGridDBBandedTableView7.OptionsView.GroupByBox := not cxGridDBBandedTableView7.OptionsView.GroupByBox;
end;

procedure TfmEDOMain.dxBarButton54Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView7);
end;

procedure TfmEDOMain.dxBarButton55Click(Sender: TObject);
begin
	cxGridDBBandedTableView7.Filtering.ColumnFilteredItemsList := not dxBarButton55.Down;
end;

procedure TfmEDOMain.dxBarButton56Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView8);
end;

procedure TfmEDOMain.dxBarButton57Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView8);
end;

procedure TfmEDOMain.dxBarButton58Click(Sender: TObject);
begin
	cxGridDBBandedTableView8.OptionsView.GroupByBox := not cxGridDBBandedTableView8.OptionsView.GroupByBox;
end;

procedure TfmEDOMain.dxBarButton59Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView8);
end;

procedure TfmEDOMain.dxBarButton60Click(Sender: TObject);
begin
	cxGridDBBandedTableView8.Filtering.ColumnFilteredItemsList := not dxBarButton60.Down;
end;

procedure TfmEDOMain.dxBarButton61Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView9);
end;

procedure TfmEDOMain.dxBarButton62Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView9);
end;

procedure TfmEDOMain.dxBarButton63Click(Sender: TObject);
begin
	cxGridDBBandedTableView9.OptionsView.GroupByBox := not cxGridDBBandedTableView9.OptionsView.GroupByBox;
end;

procedure TfmEDOMain.dxBarButton64Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView9);
end;

procedure TfmEDOMain.dxBarButton65Click(Sender: TObject);
begin
	cxGridDBBandedTableView9.Filtering.ColumnFilteredItemsList := not dxBarButton65.Down;
end;

procedure TfmEDOMain.dxBarButton66Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView10);
end;

procedure TfmEDOMain.dxBarButton67Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView10);
end;

procedure TfmEDOMain.dxBarButton68Click(Sender: TObject);
begin
	cxGridDBBandedTableView10.OptionsView.GroupByBox := not cxGridDBBandedTableView10.OptionsView.GroupByBox;
end;

procedure TfmEDOMain.dxBarButton69Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView10);
end;

procedure TfmEDOMain.dxBarButton70Click(Sender: TObject);
begin
	cxGridDBBandedTableView10.Filtering.ColumnFilteredItemsList := not dxBarButton70.Down;
end;

procedure TfmEDOMain.dxBarButton71Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView11);
end;

procedure TfmEDOMain.dxBarButton72Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView11);
end;

procedure TfmEDOMain.dxBarButton73Click(Sender: TObject);
begin
	cxGridDBBandedTableView11.OptionsView.GroupByBox := not cxGridDBBandedTableView11.OptionsView.GroupByBox;
end;

procedure TfmEDOMain.dxBarButton74Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView11);
end;

procedure TfmEDOMain.dxBarButton75Click(Sender: TObject);
begin
	cxGridDBBandedTableView11.Filtering.ColumnFilteredItemsList := not dxBarButton75.Down;
end;

procedure TfmEDOMain.dxBarButton76Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView12);
end;

procedure TfmEDOMain.dxBarButton77Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView12);
end;

procedure TfmEDOMain.dxBarButton78Click(Sender: TObject);
begin
	cxGridDBBandedTableView12.OptionsView.GroupByBox := not cxGridDBBandedTableView12.OptionsView.GroupByBox;
end;

procedure TfmEDOMain.dxBarButton79Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView12);
end;

procedure TfmEDOMain.dxBarButton80Click(Sender: TObject);
begin
	cxGridDBBandedTableView12.Filtering.ColumnFilteredItemsList := not dxBarButton80.Down;
end;

procedure TfmEDOMain.dxBarButton81Click(Sender: TObject);
begin
	PrintcxGrid(cxGridDBBandedTableView13);
end;

procedure TfmEDOMain.dxBarButton82Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGridDBBandedTableView13);
end;

procedure TfmEDOMain.dxBarButton83Click(Sender: TObject);
begin
	cxGridDBBandedTableView13.OptionsView.GroupByBox := not cxGridDBBandedTableView13.OptionsView.GroupByBox;
end;

procedure TfmEDOMain.dxBarButton84Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGridDBBandedTableView13);
end;

procedure TfmEDOMain.dxBarButton85Click(Sender: TObject);
begin
	cxGridDBBandedTableView13.Filtering.ColumnFilteredItemsList := not dxBarButton85.Down;
end;

procedure TfmEDOMain.dxBarButton86Click(Sender: TObject);
begin
	PrintcxGrid(cxGrid1DBBandedTableView1);
end;

procedure TfmEDOMain.dxBarButton87Click(Sender: TObject);
begin
	SetdxDBGridColumns(cxGrid1DBBandedTableView1);
end;

procedure TfmEDOMain.dxBarButton88Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.OptionsView.GroupByBox := not cxGrid1DBBandedTableView1.OptionsView.GroupByBox;
end;

procedure TfmEDOMain.dxBarButton89Click(Sender: TObject);
begin
	FiltercxGrid4ListID(cxGrid1DBBandedTableView1);
end;

procedure TfmEDOMain.dxBarButton90Click(Sender: TObject);
begin
	cxGrid1DBBandedTableView1.Filtering.ColumnFilteredItemsList := not dxBarButton90.Down;
end;

procedure TfmEDOMain.dxBarButton91Click(Sender: TObject);
var sp_fact_repair_from_EDO : TADOStoredProc;
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRecordCount <> 1 then begin
    Application.MessageBox('Невозможно создать карточку ремонта! '+#13+#10+'Выберите одну запись!', 'Внимание!', MB_ICONWARNING or MB_OK);
    exit;
  end;

  sp_fact_repair_from_EDO := TADOStoredProc.Create(nil);
  sp_fact_repair_from_EDO.Connection := EDO;
  sp_fact_repair_from_EDO.ProcedureName := 'sp_fact_repair_from_EDO';
  sp_fact_repair_from_EDO.Parameters.Refresh;
  sp_fact_repair_from_EDO.Parameters.ParamByName('@EDO_docs_id').Value := cxGrid1DBBandedTableView1EDO_docs_id.DataBinding.Field.AsInteger;
  sp_fact_repair_from_EDO.Parameters.ParamByName('@type_action').Value := TControl(Sender).Tag;
  try
    sp_fact_repair_from_EDO.ExecProc;
    Application.MessageBox('Карточка ремонта успешно создана.', 'Внимание!', MB_ICONINFORMATION or MB_OK);
  except
  end;
  RefreshQueryGrid(cxGrid1DBBandedTableView1, 'EDO_docs_id');
  sp_fact_repair_from_EDO.Free;
end;

procedure TfmEDOMain.dxBarButton92Click(Sender: TObject);
type
  TFunc = function(AppHand: THandle; f: boolean; usr_pwd: PUser_pwd; fact_repair_id: integer) : variant;
var
  FDic   : TFunc;
  handle : THandle;
  v      : Variant;
  column : TcxGridDBBandedColumn;
       i : integer;
begin
  column := nil;
  for i := 0 to cxGrid1DBBandedTableView1.ColumnCount-1 do begin
    if UpperCase(cxGrid1DBBandedTableView1.Columns[i].DataBinding.FieldName) = UpperCase('fact_repair_id') then
      column := cxGrid1DBBandedTableView1.Columns[i];
  end;

  if column <> nil then begin
    if column.DataBinding.Field.Value = null then begin
      Application.MessageBox('Карточка ремонта не найдена!', 'Внимание.', MB_ICONWARNING or MB_OK);
      exit;
    end;

    handle := LoadLibrary('dictionary.dll');
    @FDic := GetProcAddress(handle, 'CreateWndVagonRepairFind');
    v := FDic(Application.Handle, False, Fusr_pwd, column.DataBinding.Field.AsInteger);
    FreeLibrary(handle);
  end;
end;

procedure TfmEDOMain.dxBarButton93Click(Sender: TObject);
var sp_EDO_query: TADOStoredProc;
    str_list    : TStringList;
    file_name   : string;
    tmp_path    : string;
    column : TcxGridDBBandedColumn;
    i : integer;
begin

  column := nil;
  for i := 0 to cxGrid1DBBandedTableView1.ColumnCount-1 do begin
    if UpperCase(cxGrid1DBBandedTableView1.Columns[i].DataBinding.FieldName) = UpperCase('EDO_docid') then
      column := cxGrid1DBBandedTableView1.Columns[i];
  end;

  if column <> nil then begin

    tmp_path := ExtractFilePath(ParamStr(0)) + 'Temp\';

    sp_EDO_query := TADOStoredProc.Create(nil);
    sp_EDO_query.Connection := EDO;
    sp_EDO_query.ProcedureName := 'sp_EDO_query';
    sp_EDO_query.Parameters.Refresh;
    sp_EDO_query.Parameters.ParamByName('@type_action').Value := 9;
    sp_EDO_query.Parameters.ParamByName('@EDO_docid'  ).Value := column.DataBinding.Field.AsInteger;
    sp_EDO_query.Open;

    file_name := 'EDO_' + IntToStr(column.DataBinding.Field.AsInteger) + '.xfdl';


    str_list := TStringList.Create;
    str_list.Add(sp_EDO_query.FieldByName('EDO_bldoc').AsString);
    str_list.SaveToFile(tmp_path + '\' + file_name);
    str_list.Free;

    ShellExecute(Application.Handle, 'open', PChar(tmp_path + '\' + file_name), nil, nil, SW_SHOWNORMAL);

    sp_EDO_query.Free;
  end;
end;

procedure TfmEDOMain.dxBarButton94Click(Sender: TObject);
var   HTTP : THTTPReqResp;
      resp : TStringStream;
      xml  : RawByteString;
 soap_send : RawByteString;
 sp_EDO_query_save : TADOStoredProc;
 Q : TADOQuery;
        columnP_15 : TcxGridDBBandedColumn;
   columnEDO_docid : TcxGridDBBandedColumn;
                 i : integer;
begin
  columnP_15 := nil;
  columnEDO_docid := nil;
  for i := 0 to cxGrid1DBBandedTableView1.ColumnCount-1 do begin
    if UpperCase(cxGrid1DBBandedTableView1.Columns[i].DataBinding.FieldName) = UpperCase('EDO_docid') then
      columnEDO_docid := cxGrid1DBBandedTableView1.Columns[i];

    if UpperCase(cxGrid1DBBandedTableView1.Columns[i].DataBinding.FieldName) = UpperCase('P_15') then
      columnP_15 := cxGrid1DBBandedTableView1.Columns[i];
  end;

  if (columnP_15 <> nil) and (columnEDO_docid <> nil) then begin
    if Application.MessageBox(PChar('Подписать документ (Вагон № ' + columnP_15.DataBinding.Field.AsString + ') ?'), 'Внимание', MB_ICONQUESTION or MB_OKCANCEL or MB_DEFBUTTON2) = ID_OK then begin
      try
        try
          // Подписать документ
          soap_send :=
          '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:con="http://iit.ru/portal/Contraginvoice">'+
          '<soapenv:Header/>'+
          '<soapenv:Body>'+
          '<con:PackAcceptRequest>'+
//          '<cert_sn>17ecf981000000031c40</cert_sn>'+
          '<cert_sn>2e1dec370000000041f8</cert_sn>'+
          '<docid>' + IntToStr(columnEDO_docid.DataBinding.Field.AsInteger) + '</docid>'+
          '<inn>7702059030</inn>'+
          '<kpp>770201001</kpp>'+
          '</con:PackAcceptRequest>'+
          '</soapenv:Body>'+
          '</soapenv:Envelope>';

          HTTP := THTTPReqResp.Create(nil);
          HTTP.URL := 'http://iit.ru/IIT/ContrAgInvoice/services';
          HTTP.UserName := 'RZD_WEB_SOVFRAHT';
          HTTP.Password := 'aj0Aeghi';

          resp := TStringStream.Create;
          xml  := UTF8Encode(soap_send);

          HTTP.Execute(xml, resp);
          xml := UTF8ToString(resp.DataString);


          Q := TADOQuery.Create(nil);
          Q.Connection := EDO;
          Q.SQL.Add('DECLARE @xml xml');
          Q.SQL.Add('SET @xml = ''' + xml + '''');
          Q.SQL.Add(';WITH XMLNAMESPACES(''http://schemas.xmlsoap.org/soap/envelope/'' as p1, ''http://iit.ru/portal/Contraginvoice'' as p2)');
          Q.SQL.Add('SELECT	ref.value (''(code)[1]'',''varchar(max)'') as code');
          Q.SQL.Add('FROM	@xml.nodes(''/p1:Envelope/p1:Body/p2:PackAcceptResponse'') as node(ref)');
          Q.Open;

          if (Q.FieldByName('code').AsString = '0') or (Q.FieldByName('code').AsString = '2') then begin
            Application.MessageBox('Документ подписан!', 'Внимание', MB_ICONINFORMATION or MB_OK);
          end else begin
            Application.MessageBox('Ошибка при подписании документа!', 'Внимание', MB_ICONSTOP or MB_OK);
          end;
          Q.Free;

          // Обновить документ
          soap_send :=
          '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:con="http://iit.ru/portal/Contraginvoice">'+
          '<soapenv:Header/>'+
          '<soapenv:Body>'+
          '<con:DocDataRequest>'+
          '<cert_sn>2e1dec370000000041f8</cert_sn>'+
          '<docid>' + IntToStr(columnEDO_docid.DataBinding.Field.AsInteger) + '</docid>'+
          '<inn>7702059030</inn>'+
          '<kpp>770201001</kpp>'+
          '</con:DocDataRequest>'+
          '</soapenv:Body>'+
          '</soapenv:Envelope>';

          HTTP := THTTPReqResp.Create(nil);
          HTTP.URL := 'http://iit.ru/IIT/ContrAgInvoice/services';
          HTTP.UserName := 'RZD_WEB_SOVFRAHT';
          HTTP.Password := 'aj0Aeghi';

          resp := TStringStream.Create;
          xml  := UTF8Encode(soap_send);

          HTTP.Execute(xml, resp);
          xml := UTF8ToString(resp.DataString);

          sp_EDO_query_save := TADOStoredProc.Create(nil);
          sp_EDO_query_save.Connection := EDO;
          sp_EDO_query_save.ProcedureName := 'sp_EDO_query';
          sp_EDO_query_save.Parameters.Refresh;
          sp_EDO_query_save.Parameters.ParamByName('@type_action' ).Value := 8;
          sp_EDO_query_save.Parameters.ParamByName('@query_xml'   ).Value := xml;
          sp_EDO_query_save.ExecProc;

          RefreshQueryGrid(cxGrid1DBBandedTableView1, 'EDO_docs_id');
        except
          {$region 'Обработка ошибок...'}
          on E: Exception do begin
            Application.MessageBox(PChar('Ошибка (GetSOAP):' + E.Message), 'Ошибка', MB_ICONSTOP or MB_OK);
          end;
          {$endregion}
        end;
      finally
        resp.Free;
        HTTP.Free;
      end;
    end;
  end;
end;

procedure TfmEDOMain.dxBarButton95Click(Sender: TObject);
var sp_EDO_query: TADOStoredProc;
    str_list    : TStringList;
    file_name   : string;
    tmp_path    : string;
         column : TcxGridDBBandedColumn;
              i : integer;
begin
  column := nil;
  for i := 0 to cxGridDBBandedTableView1.ColumnCount-1 do begin

    if UpperCase(cxGridDBBandedTableView1.Columns[i].DataBinding.FieldName) = UpperCase('P_3a') then
      column := cxGridDBBandedTableView1.Columns[i];
  end;

  if (column <> nil) then begin

    tmp_path := ExtractFilePath(ParamStr(0)) + 'Temp\';

    sp_EDO_query := TADOStoredProc.Create(nil);
    sp_EDO_query.Connection := EDO;
    sp_EDO_query.ProcedureName := 'sp_EDO_query';
    sp_EDO_query.Parameters.Refresh;
    sp_EDO_query.Parameters.ParamByName('@type_action').Value := 9;
    sp_EDO_query.Parameters.ParamByName('@EDO_docid'  ).Value := column.DataBinding.Field.AsInteger;
    sp_EDO_query.Open;

    file_name := 'EDO_' + IntToStr(column.DataBinding.Field.AsInteger) + '.xfdl';


    str_list := TStringList.Create;
    str_list.Add(sp_EDO_query.FieldByName('EDO_bldoc').AsString);
    str_list.SaveToFile(tmp_path + '\' + file_name);
    str_list.Free;

    ShellExecute(Application.Handle, 'open', PChar(tmp_path + '\' + file_name), nil, nil, SW_SHOWNORMAL);

    sp_EDO_query.Free;
  end;
end;

procedure TfmEDOMain.dxBarButton96Click(Sender: TObject);
var   HTTP : THTTPReqResp;
      resp : TStringStream;
      xml  : RawByteString;
 soap_send : RawByteString;
 sp_EDO_query_save : TADOStoredProc;
 Q : TADOQuery;
        columnP_15 : TcxGridDBBandedColumn;
   columnEDO_docid : TcxGridDBBandedColumn;
                 i : integer;
begin
  columnP_15 := nil;
  columnEDO_docid := nil;
  for i := 0 to cxGrid1DBBandedTableView1.ColumnCount-1 do begin
    if UpperCase(cxGrid1DBBandedTableView1.Columns[i].DataBinding.FieldName) = UpperCase('EDO_docid') then
      columnEDO_docid := cxGrid1DBBandedTableView1.Columns[i];

    if UpperCase(cxGrid1DBBandedTableView1.Columns[i].DataBinding.FieldName) = UpperCase('P_15') then
      columnP_15 := cxGrid1DBBandedTableView1.Columns[i];
  end;

  if (columnP_15 <> nil) and (columnEDO_docid <> nil) then begin
      try
        try
          // Обновить документ
          soap_send :=
          '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:con="http://iit.ru/portal/Contraginvoice">'+
          '<soapenv:Header/>'+
          '<soapenv:Body>'+
          '<con:DocDataRequest>'+
          '<cert_sn>2e1dec370000000041f8</cert_sn>'+
          '<docid>' + IntToStr(columnEDO_docid.DataBinding.Field.AsInteger) + '</docid>'+
          '<inn>7702059030</inn>'+
          '<kpp>770201001</kpp>'+
          '</con:DocDataRequest>'+
          '</soapenv:Body>'+
          '</soapenv:Envelope>';

          HTTP := THTTPReqResp.Create(nil);
          HTTP.URL := 'http://iit.ru/IIT/ContrAgInvoice/services';
          HTTP.UserName := 'RZD_WEB_SOVFRAHT';
          HTTP.Password := 'aj0Aeghi';

          resp := TStringStream.Create;
          xml  := UTF8Encode(soap_send);

          HTTP.Execute(xml, resp);
          xml := UTF8ToString(resp.DataString);

          sp_EDO_query_save := TADOStoredProc.Create(nil);
          sp_EDO_query_save.Connection := EDO;
          sp_EDO_query_save.ProcedureName := 'sp_EDO_query';
          sp_EDO_query_save.Parameters.Refresh;
          sp_EDO_query_save.Parameters.ParamByName('@type_action' ).Value := 8;
          sp_EDO_query_save.Parameters.ParamByName('@query_xml'   ).Value := xml;
          sp_EDO_query_save.ExecProc;

          RefreshQueryGrid(cxGrid1DBBandedTableView1, 'EDO_docs_id');
        except
          {$region 'Обработка ошибок...'}
          on E: Exception do begin
            Application.MessageBox(PChar('Ошибка (GetSOAP):' + E.Message), 'Ошибка', MB_ICONSTOP or MB_OK);
          end;
          {$endregion}
        end;
      finally
        resp.Free;
        HTTP.Free;
      end;
  end;
end;

procedure TfmEDOMain.dxBarButton97Click(Sender: TObject);
var   HTTP : THTTPReqResp;
      resp : TStringStream;
      xml  : RawByteString;
 soap_send : RawByteString;
 sp_EDO_query_save : TADOStoredProc;
 Q : TADOQuery;
        columnP_3a : TcxGridDBBandedColumn;
   columnEDO_docid : TcxGridDBBandedColumn;
                 i : integer;
begin
  columnP_3a := nil;
  columnEDO_docid := nil;
  for i := 0 to cxGridDBBandedTableView1.ColumnCount-1 do begin
//    if UpperCase(cxGridDBBandedTableView1.Columns[i].DataBinding.FieldName) = UpperCase('EDO_docid') then
//      columnEDO_docid := cxGridDBBandedTableView1.Columns[i];

    if UpperCase(cxGridDBBandedTableView1.Columns[i].DataBinding.FieldName) = UpperCase('P_3a') then
      columnP_3a := cxGridDBBandedTableView1.Columns[i];
  end;

  if (columnP_3a <> nil) then begin
      try
        try
          // Обновить документ
          soap_send :=
          '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:con="http://iit.ru/portal/Contraginvoice">'+
          '<soapenv:Header/>'+
          '<soapenv:Body>'+
          '<con:DocDataRequest>'+
          '<cert_sn>2e1dec370000000041f8</cert_sn>'+
          '<docid>' + IntToStr(columnP_3a.DataBinding.Field.AsInteger) + '</docid>'+
          '<inn>7702059030</inn>'+
          '<kpp>770201001</kpp>'+
          '</con:DocDataRequest>'+
          '</soapenv:Body>'+
          '</soapenv:Envelope>';

          HTTP := THTTPReqResp.Create(nil);
          HTTP.URL := 'http://iit.ru/IIT/ContrAgInvoice/services';
          HTTP.UserName := 'RZD_WEB_SOVFRAHT';
          HTTP.Password := 'aj0Aeghi';

          resp := TStringStream.Create;
          xml  := UTF8Encode(soap_send);

          HTTP.Execute(xml, resp);
          xml := UTF8ToString(resp.DataString);

          sp_EDO_query_save := TADOStoredProc.Create(nil);
          sp_EDO_query_save.Connection := EDO;
          sp_EDO_query_save.ProcedureName := 'sp_EDO_query';
          sp_EDO_query_save.Parameters.Refresh;
          sp_EDO_query_save.Parameters.ParamByName('@type_action' ).Value := 8;
          sp_EDO_query_save.Parameters.ParamByName('@query_xml'   ).Value := xml;
          sp_EDO_query_save.ExecProc;

//          RefreshQueryGrid(cxGridDBBandedTableView1, 'EDO_docs_id');
        except
          {$region 'Обработка ошибок...'}
          on E: Exception do begin
            Application.MessageBox(PChar('Ошибка (GetSOAP):' + E.Message), 'Ошибка', MB_ICONSTOP or MB_OK);
          end;
          {$endregion}
        end;
      finally
        resp.Free;
        HTTP.Free;
      end;
  end;
end;

procedure TfmEDOMain.dxBarButton99Click(Sender: TObject);
begin
  Screen.Cursor := crHourglass;
  if TControl(Sender).Tag = 1 then begin
    Fdate1 := IncMonth(Fdate1, -1);
  end;

  if TControl(Sender).Tag = 2 then begin
    Fdate1 := IncMonth(Fdate1, 1);
  end;

  Fdate2 := IncMonth(Fdate1, 1) - 1;
  dxBarSubItem2.Caption := FormatDateTime('mmmm yyyy', Fdate1);

  Query_EDO.Close;
  if Query_EDO.Parameters.FindParam('date1') <> nil then begin
    Query_EDO.Parameters.ParamByName('date1').Value := Fdate1;
    Query_EDO.Parameters.ParamByName('date2').Value := Fdate2;
  end;
  Query_EDO.Open;

  Screen.Cursor := crDefault;
end;

procedure TfmEDOMain.dxBarPopupMenu14Popup(Sender: TObject);
begin
  dxBarButton91.Visible := ivNever;
  dxBarButton92.Visible := ivNever;
  dxBarButton93.Visible := ivNever;
  dxBarButton94.Visible := ivNever;
  dxBarButton100.Visible := ivNever;
  dxBarSubItem1.Visible := ivNever;


  if Fdoc_type = 'ФПУ-26' then begin
    dxBarButton91.Visible := ivAlways;
    dxBarButton92.Visible := ivAlways;
    dxBarButton100.Visible := ivAlways;
    dxBarSubItem1.Visible := ivAlways;
  end;

  if Fdoc_type = 'Пакет документов' then begin
    dxBarButton93.Visible := ivAlways;
    dxBarButton94.Visible := ivAlways;
  end;
end;

procedure TfmEDOMain.dxBarPopupMenu1Popup(Sender: TObject);
begin
  if Fdoc_type = 'Пакет документов' then begin
    dxBarButton95.Visible := ivAlways;
  end else begin
    dxBarButton95.Visible := ivNever;
  end;

end;

procedure TfmEDOMain.EDOExecuteComplete(Connection: TADOConnection;
  RecordsAffected: Integer; const Error: Error; var EventStatus: TEventStatus;
  const Command: _Command; const Recordset: _Recordset);
begin
  if EventStatus = esErrorsOccured then begin
    Application.MessageBox(PWideChar(Error.Description), 'Внимание', MB_OK);
  end;
end;

procedure TfmEDOMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfmEDOMain.FormDestroy(Sender: TObject);
begin
  StoreRegistryDate(rgSave, '\Software\Lis1\DateTime\TfmEDOMain', Fdate1, Fdate2);
  if Fdoc_type = 'ФПУ-26'                  then StoreRegistryGrid(rgSave,'\Software\Lis1\TfmEDO_FPU26_Grids\MainGrids', cxGrid1DBBandedTableView1);
  if Fdoc_type = 'Акт браковки'            then StoreRegistryGrid(rgSave,'\Software\Lis1\TfmEDO_ACT_reject_Grids\MainGrids', cxGrid1DBBandedTableView1);
  if Fdoc_type = 'Акт приема передачи ТМЦ' then StoreRegistryGrid(rgSave,'\Software\Lis1\EDO_ACT_accept_Grids\MainGrids', cxGrid1DBBandedTableView1);
  if Fdoc_type = 'ВУ-23_О'                 then StoreRegistryGrid(rgSave,'\Software\Lis1\TfmEDO_VU_23_Grids\MainGrids', cxGrid1DBBandedTableView1);
  if Fdoc_type = 'ВУ-36М_О'                then StoreRegistryGrid(rgSave,'\Software\Lis1\TfmEDO_VU_36_Grids\MainGrids', cxGrid1DBBandedTableView1);
  if Fdoc_type = 'МХ-1'                    then StoreRegistryGrid(rgSave,'\Software\Lis1\TfmEDO_MX1_Grids\MainGrids', cxGrid1DBBandedTableView1);
  if Fdoc_type = 'МХ-3'                    then StoreRegistryGrid(rgSave,'\Software\Lis1\TfmEDO_MX3_Grids\MainGrids', cxGrid1DBBandedTableView1);
  if Fdoc_type = 'Пакет документов'        then StoreRegistryGrid(rgSave,'\Software\Lis1\TfmEDO_DOCS_LIST_Grids\MainGrids', cxGrid1DBBandedTableView1);
  if Fdoc_type = 'РДВ'                     then StoreRegistryGrid(rgSave,'\Software\Lis1\TfmEDO_RDV_Grids\MainGrids', cxGrid1DBBandedTableView1);
  if Fdoc_type = 'Расчет стоимости услуг по хранению' then StoreRegistryGrid(rgSave,'\Software\Lis1\TfmEDO_RSH_Grids\MainGrids', cxGrid1DBBandedTableView1);
end;

initialization
  dxInitialize;
finalization
  dxFinalize;


end.
