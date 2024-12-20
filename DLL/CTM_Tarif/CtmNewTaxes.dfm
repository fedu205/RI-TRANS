object fmCtmNewTaxes: TfmCtmNewTaxes
  Left = 0
  Top = 0
  Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1089#1073#1086#1088#1099
  ClientHeight = 304
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 76
    Width = 719
    Height = 191
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.ScrollbarMode = sbmClassic
    object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      Navigator.Buttons.Filter.Enabled = False
      Navigator.Buttons.Filter.Visible = False
      DataController.DataSource = DS_Taxes
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.Active = True
      DataController.KeyFieldNames = 'TaxID'
      DataController.Options = [dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = '0'
          Kind = skCount
          FieldName = 'bargain_id'
        end
        item
          Format = '#,##0.000'
          Kind = skSum
          FieldName = 'quantity'
        end
        item
          Format = '0'
          Kind = skSum
          FieldName = 'quantity_units'
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'bargain_sum'
        end
        item
          Format = '#,##0.000'
          Kind = skSum
          FieldName = 'amount_fact'
        end
        item
          Format = '0'
          Kind = skSum
          FieldName = 'amount_units_fact'
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'bargain_sum_fact'
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'bargain_sum_fact_USD'
        end
        item
          Format = '#,##0.00'
          Kind = skSum
          FieldName = 'bargain_comiss_USD'
        end
        item
          Format = '#,##0.000'
          Kind = skSum
        end
        item
          Format = '#,##0.00'
          Kind = skSum
        end
        item
          Format = '#,##0.00'
          Kind = skSum
        end
        item
          Format = '#,##0.00'
          Kind = skSum
        end>
      DataController.Summary.SummaryGroups = <>
      DataController.Summary.Options = [soMultipleSelectedRecords]
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsSelection.HideFocusRectOnExit = False
      OptionsSelection.UnselectFocusedRecordOnExit = False
      OptionsView.Footer = True
      OptionsView.GridLineColor = clSilver
      OptionsView.GroupByBox = False
      OptionsView.HeaderFilterButtonShowMode = fbmButton
      OptionsView.BandHeaders = False
      Bands = <
        item
        end>
      object cxGrid1DBBandedTableView1RecId: TcxGridDBBandedColumn
        DataBinding.FieldName = 'RecId'
        Visible = False
        Options.Editing = False
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1TaxID: TcxGridDBBandedColumn
        Caption = #1050#1086#1076' '#1089#1073#1086#1088#1072
        DataBinding.FieldName = 'TaxID'
        Options.Editing = False
        Width = 52
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Select: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Select'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Width = 20
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
        IsCaptionAssigned = True
      end
      object cxGrid1DBBandedTableView1Caption: TcxGridDBBandedColumn
        Caption = #1058#1080#1087' '#1089#1073#1086#1088#1072
        DataBinding.FieldName = 'Caption'
        Options.Editing = False
        Width = 250
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1ParamType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ParamType'
        Options.Editing = False
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1Param: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Param'
        Options.Editing = False
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1ABBR: TcxGridDBBandedColumn
        Caption = #1045#1076'. '#1080#1079#1084
        DataBinding.FieldName = 'ABBR'
        Options.Editing = False
        Width = 50
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1sum: TcxGridDBBandedColumn
        Caption = #1057#1090#1072#1074#1082#1072
        DataBinding.FieldName = 'sum'
        Options.Editing = False
        Width = 70
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1Column1: TcxGridDBBandedColumn
        Caption = #1047#1085#1072#1095#1077#1085#1080#1077' '#1089#1073#1086#1088#1072
        DataBinding.FieldName = 'ParamName'
        PropertiesClassName = 'TcxComboBoxProperties'
        Width = 226
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object cxGrid1DBBandedTableView1LandId: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LandId'
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object cxGrid1DBBandedTableView1Rate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'rate'
        Width = 100
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBBandedTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 35
    Width = 719
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    Color = clBtnShadow
    TabOrder = 1
    object cxLabel1: TcxLabel
      Left = 0
      Top = 21
      Align = alBottom
      Caption = #1058#1088#1077#1073#1091#1077#1090#1089#1103' '#1074#1085#1077#1089#1090#1080' '#1079#1085#1072#1095#1077#1085#1080#1077
      ParentColor = False
      ParentFont = False
      Style.Color = 11599867
      Style.Font.Charset = RUSSIAN_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -13
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      AnchorY = 31
    end
    object cxLabel2: TcxLabel
      Left = 0
      Top = 1
      Align = alBottom
      Caption = #1058#1088#1077#1073#1091#1077#1090#1089#1103' '#1074#1099#1073#1088#1072#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1077
      ParentColor = False
      ParentFont = False
      Style.Color = 14286550
      Style.Font.Charset = RUSSIAN_CHARSET
      Style.Font.Color = clBlue
      Style.Font.Height = -13
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      AnchorY = 11
    end
  end
  object Panel29: TPanel
    Left = 0
    Top = 0
    Width = 719
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    Color = clBtnShadow
    TabOrder = 2
    object Image1: TImage
      Left = 0
      Top = 0
      Width = 32
      Height = 35
      Align = alLeft
      Center = True
      Picture.Data = {
        0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000030
        0000003008060000005702F987000000017352474200AECE1CE9000000046741
        4D410000B18F0BFC6105000000206348524D00007A26000080840000FA000000
        80E8000075300000EA6000003A98000017709CBA513C00000009704859730000
        0B0C00000B0C013F4022C8000011E1494441546843ED5907545667B6FD50B082
        144B2C310AF64AC016632C89C6128DBD461135F6821451C168EC6207071BD2A5
        57A9D291DE9122FD9726A814417AFDEF9E73AFE565326A4C9999F7D61BD73A4B
        F8D7E5BB7B9FB3CF3EE703C6FEFBEFBF19F8F7676063FEC0AEBB3255B7EDCD51
        DDBA3B5B75C9CECC8953B73F9A306C5389AAFCC640D6F1DF8FE877BC71B768E2
        34F598F1195A5933DA0F177CCBE9E4CCE0F6654CE576264FE2B6C4ABB46D8C52
        6E504F1857B231715CF2868471FEEB6246DAAC8A1E7A7559A492DEB2F0A15B97
        860E59B22862F0D445A18387CDBB3F4061B60193FC1DAFFFE38F6ECC1C2FBDF9
        A1B2E19658959653654B5B0D9BD673D71AB7C0B9CD10B62D6760DE7498BB59BF
        8FBB5AB39933A85C253E5AFA9D58B77096F85CEEA6F684BC482E28CB0BEE29D6
        B04E348271F4099C0FD3E68E866C6FDFEFBFAA619EEFE027733D0727CF721BE4
        3FCD7180CD449BBE5755CDFAEA8D35E9BD75E435B925832ECA7C39F0A2ECB01E
        064C815DFD03847F7C346ECEDA0763F2343367B55E6D546BBFD2B00EB71B3511
        CE052012C1084700C57D3C803742E1459FB8D377B68868F646F9D30A3C2D7986
        E2A227282A284681A810A29C7CE46589204A2FC0F5F063E2FD39D39BF6A44E6B
        D81A3FB9412D42A56E85FFD8DAEFEE0DAB9961A3F872A249FFAA11577A557D7A
        52E6656FFD6E750AFA5D6AE54E4B4EFEA852ACCD52945B1735D6442DF2F396D3
        E5CB5B8D9A377297EBD7C0AEF91CA20972040209B4AF003A041E08821B5171A2
        4F6C90DA188BAA8A6A943D2F436969298A8B097C4101442211F2F2F290979D07
        AF382738E00CEC710A566DFAB8D3A28D1BF5BB60F87233CEBFF80167CB57402F
        7F0EB4B3A79354A7B7EAE64EAFED73AA7B93F431A931BF49E087A4710B57068C
        2CDA9F31ABC5A845BDDDA8490D460D6AF06BB7453CE21045D02389409890793E
        EBF7E83B67F8C10EA2A64CD456D7A1B2B21265656578F6EC194A4A4A50545484
        FCFC7C3C16E5E34142106C9B4F1181D354AB9314C7701747608DC3B0C4410A1D
        5851E8E47C8D7DE95F0AB1315EB5B5DB61C916768C75FD4D02ABC34717EB8ABE
        6DBA5CFB43DBD5860D6D868D1BC457EBD5B86B0D9B71BD7E274C1AB461DE7804
        364DA7E1D07411CEAD46F06A374579EB5334D537A3B6A616555555A8A8A8C0F3
        E7CFDF56A1B8A818298F52605D799A327F9AE89EA07AF1E0F509F021027E00E6
        D0A2D80FC37A75EC4DFB82622A3488C024D7815C8FA352A2DF04CF3FB02A62D4
        C3AD092ADCE6D8F1D8184311ABCC6D4E9A28DE913EB57D5FF68C76EDFC39DCE1
        270BF073D9629CAE5A860B956BF0A42A0FCD0D2D686E6E464343036A6A6A505D
        5D2D548227F1B4F4A95001F33C224DE05FC9E7C4EBECEB53F60FC182B26E0E4D
        0A0DE815CE13C0EF49FD023A24A34E172439F9635D7C3F8AC08A07A302B7C6AB
        624BDCE7508F55C686E871A07EC0AAF051581E36128B43876361C830CC0B54C2
        9C40452C0F5641426432C2C2C2101E1E8EE8E868C4C7C723252505191919C8CD
        CD45617E11FE1677107AC5DFE0F0E3D9D07BFC2D8E142CC0F1E2253859BA12E7
        CAD7E042D57A5CAD53876183BA009C8FBD142BC295C17E6250F8A9CBD58F22B0
        3C74A4EDB6847F26B03A62341D360A4B1F8CC0F73C89E0A1981FA484EF03C722
        3A3416212121080A0A42606020FCFDFDE1EBEB0B1F1F1F787979C1D5D10DD3EF
        2BE2BBC8D15819AF828D046C67E674E88866E30865FB2885DEE33938903313DA
        F4F9FE47D304F0DA995F41C9B4273AE977E0E48F745EF9510496858CB0FE314E
        E59F2AF096005541204055981F34040B0247202C2042007DFFFE7D01B4B7B737
        3C3D3DE1E1E121848B9D0B8639CA6388A32C063BC8E2533B19F4B5E98E5ED65D
        D19362807D0F0C77EF8309BE033193CEFD9EAABE3E7912343267801D61903E2C
        55CE76B22E1F456049C888FC1FE354399210274888FA8097D0EAC831420596FD
        42463C8179014311E413F20FA0DDDDDDE1E6E606171717383B3BC3C6CA06C39C
        E530CC45014A8E7218F49A443F5B69F4B9DB4D20216BD505D2E652E862260949
        1309B09B0C337C87801D66903FD2C5E8A3C0F30F2D0D1E1EBE354195FB3151B5
        6967DA9735FBB3A6D7EF4CFD42BC2571023610A15544640955607EB012BE091C
        80990103E0EBE1875F8276727282A3A323ECEDED616767070B130B0C77922712
        EF27204F047A587442779E84694774BC2381CF1D07A0F3C18EEDD2DA52E59D75
        257D3A6A4A1C67BB58FF0F9259E037CC660B4988CFFEBAE8B158193D96534B9E
        D8BC2F67461BEF0E3AA26FA091FD25CEE46C40509E079C1E5AC0CBD34BC8B483
        838300D8D6D616363636B0B6B6869595156E19DF8692930C863ACB43F11D15E0
        A5F42E02834DE431FE7A1F6EBC71EF262503B90A69AD4E0D6C1BDBF25E0269B7
        58F71D4EFD7C56458DC7F658159C8B9A809B612AB0081E076BBFE1B84E25BD16
        AD0CD3F43DA87C4E9659DF82171555C2A44D4B4B135C88EF013EFB3C78B33B66
        B87DFD0E0CCD2E6049EC587C4DFA56F11E0045AA465F92CE9B1E90B3EC8C1E14
        3294FD5F5660E86D054CB31C8819770773438C1538094DC6118199EF2450E0C6
        3E49B9CDD2EEB97C561F93B2142F9297A13C6E014A2366A228640A0AFC9421F2
        1A815C97CF90692B8724C7097810EC89C4E444E48A72505C5244969987A4A464
        448445C1DDD913976D4EE25CD6269C6F5C814B356B70A5761D0DA9F5425CA85E
        8D9F9E2DC61E72A2F5E4380BA8E2CA5E03D0DBAA1BBA99498199304CBADB1FF3
        EF0D87DCC5AE1C6FA56C2F11D8CBFABD9340B625BB9EE33DE249DD539DF62AD1
        569467FC80A729CB5112FF1D8AA2BE417EE8971005A820C77B1432DD1591E1D8
        13892ED3E11FF0007E7E7EF0F5F741684C10621F46E2AECF2DE83C58845DE913
        B03F731AF4497A0655AB60D8A8862B049E26BCF0B5118571CB265C6FDD4C16FA
        2D56FA9349F88CC0124AD42AB2E72F9C0683D607610EF06EC434583581977827
        812C0BE65191BBA9ADAE4C0F2F8BF7E185681BCAB3D4F02C75254A1217A1387A
        0E0AC2BE82287022727DC722DB4309197EF3E1ED4BBBE85BDBF424E9DCC5A2A4
        11D0299C8DE3A50B6992CE1486D2AE8793B13FE32BFC54BC0097A812D7DBB6E0
        A6782B4E952D837A940AD6868CC1EAA031581B3C16EA3113D1EFBA2CD85102CD
        873E851EC53E96F05EFD13018B8A2CB5B696FAF3A82B27124FB45095BF0315D9
        EA789EBE06A5498BF1246E2E8A2367A2347E2EF21ECC41F48DEE08743380DB3D
        5FB24D77B8BABAC2CAD21A8AAEDDA9596531D6A32F96D1E0D22D988B9F09B876
        D60CEC4E9902BA0441838695260DADCD31CA1434F5A394B12F752A16048C063B
        4960F9CCF3E0F9CCEB91740E50EC63361F2270AE386A4E4BDDF343A82D3D80DA
        A7BAE0AB514F646A4BB55191B70D85092B91E8360B2E27FBC38D3212794D0299
        0E32F0B7D7A0C675155CC8CCD41C43DC6430FCB5650EA421D59B1A76B85B6F6A
        64651CE4276FD17CE8FC82CCDED429D0A24A299AF504FB9900F3F106BC3E01DF
        4FB183898880CA7B096498B2C5E9CE839BEA2BF4F18CB4FF38780A329CFB21F1
        1643D825066F3AD44997C16C1783E94E06372A6BAC890C723C0623D2763E59A7
        1B6C6D6C71FBD66D0CFD05017E680DA0C9DB8726AF3C390DEF328A446E114DDB
        835499A38573B19224D4E16C07B0E3049C8F37BA3F4CC0F7086145EED3E383FE
        1F6DC864230C594D45CEE6D68AEC8D288AFC1A591E43916CD10591460CFE675F
        81B6DCCB70671B65DFA41F8AC2BE40868B124C6F28703B2C76C0C2DC1226C677
        30D45DF66D05DE1078B33AF096294D034BEA0E01A669BB2C7AFCAB8CF3B27903
        FE2881D6A5D8C95E302DB6E6A3A6709201EBF2E0326BAC7B7EF0654D8996A0FD
        C7C1939066A780F8DBDD107EA327C24D1491E03C09A2B0D948765181E7697978
        1D639CCF715677E084A4BFB2453FA7E5D7E6348EB254A0C9AB8021B43E0CA25E
        E02BF096004D5C1922D09556868EB4324CF71DC2B113FF001E82DFEF60A14C9B
        7DF651E0F98782D6B18E2495BAE6DA338D0D24A3FAF223A8C8514771CC1CC13A
        53AD6510F337AAC4190617DA4F7829595079E9EB163B2DF6C44D870DE2CF51B0
        90951F744561FBA7977A457C7A4D5E3CD04C0EFD790276B4BCDDA5896BFD3F04
        24695D18EFD89F132AC0679F2ADC710F6B26ADEB31B53FF06B9A98ABACB0F6B9
        5E4BDD335D6A621DBC2CDA27B80F6F9B293460A28D25E07756020ED40B763A0C
        219758938D266B70D262A379F0E9266C64E215A61E739E1D8B39C7CE991A4858
        6E38D5256FEC49E966F9CBD29CFC1DEA83BB44C08A2A602E49329280A2A98298
        27D0F110C56E896C92CEA48FCEFAAF1F8CBDCCDCCA737772D585BB504ADE9F1F
        3C19D99EC39062D30B51B764E17BA6336CB4A807A8895DC885422FB276EBFDAC
        3ED080E9261AB3E478D31EE2877603B9346725A4390DE6526DFA22F98E1CE20C
        3B734EC725B84D7A52EDD247BA34489FEF846E2692E864D141AC70A59B989634
        B1A406CDDE434CFA0F83E77F30EA0AB32A4D576FAB21DBE433CF4FDE34FB5E88
        BBCE107C81C183DCC1569B08907CF82A049E6555A4FFC624EB4FB827F10BB9A7
        498B395E728534F0F8FEC9F31B8F1CAFE1C8721F4493FB13C4187585B73E138D
        D595D2EAAC23E5D5E97087E6CE9A1DCB3BEAB0157F0AF89B1F8EB8C8368418F5
        682DCB56173F4F5B85C7B4033D72EA8F04B2D250B2522FD2A9FD0122B0838949
        42D55485C687B603B8EA829D5C79E67AB2DF152849A0A9CD93089F4E24261309
        6564D36A90E53618992EFD1173439AF3D7679EC23BF7B14F68B7E9FD9780CF33
        630B230D597084918438DE4C8ECBB9FF39977B7F1C97492F4EE7AB60228D80F3
        529C2B0D16CAFE4B8BBD2CDFFB048B2F495EC9D5146BA0328FF6A7AC0D7846C4
        85A91D3B1785B408E6877C813C7FDAA17C4623EB9E1255E353CE554FB2C5F524
        93F94B80A7DE64B2C93799739C49B73651E094F6E2D8B95C21AD0BBCFEF3FC3F
        7FF562EA834CD7CF90E1D41729D6725C8041C7768FA3CC8924645C92BC86E3A7
        B7B03F3DDE4EF6BB51583D9E262FA5D56381304FF21FD022183881CC600C1EFB
        8FE39CF43BB7B91FF88DC1F431EC726D9854F855169AEAA8D45C9EB941FC2C95
        24C02F6E31DFBECD9E2840F5D5F2C693E0B5ECD48F66434F71C8E5CE628F9F98
        B8306E05D7DA6080BAE787697FDA4FFBD34EB2DF4D287BB4EED5369BB01045D1
        B385BE280CFF0AB9FE93396AFC163775D6FD63307EF019F2FDCDF1A60AB5354F
        34DA2B7337A38C56685EC7A589DF9304E6A13072D6EBECD1067A7FBCA0657E95
        7E445AE6AB91642ED39E68370ACD3527859DA9A9EA04EACB88C8EB6A54E66CA4
        33D7E205DDDE8A92D620DA7A1C820C588B9506AB72D661527F9A00D9E08DC2A8
        F92D35E4F97CE62A73B740684641C74B5E4980EE02FC1AFDCA559485A196756F
        083278224422E64657EEA1DB448EC072C594695E324561D4C0A1D391E93B0DF1
        F62A703FD51B377F14762931D9709B952E33F8D3E0F903820DD8B9A2B8651C3F
        796B4A34515DB8FB7533AABDD2F1C3A52481EF84BB4061F80C6AC82942433E0E
        5445AAC3406A4845A4DA7FC239E8B036DFB3DDDA93EC478833DC14DB532CBB72
        D1D71847539BA3AD557C578389CD696A5BEC6395D607D95EBCEF52F27B59059C
        65DA597E5FB5B6D49F135667DEFFAB8BF652336E1376215EC7FC662AF405B94A
        11357709DD09126C4720EE7677A12953EDFA70D61AEC99B33E9BEA7584997B1C
        66054E875823D96D33CD8C46675D56E47480793868B3ED5E4799DCEFC5F8C1E7
        03CFB035B1D68A0D2D7567B9A6DA336878710C75CF0EA2E60955A3809A919754
        D67A94A5AF4665CE7A3C8E59099F0B03E04DF3E071902A39D438841B76105353
        3686AC679D5EBF4CC2E704EBCEBB8CB316EBF69702FEF5617E6799DCFD93ACA4
        2869555365EE268ECF3A6F85D505BB85FFCBE9424E2E8354CF19F038D31BC66A
        B452FFDC9D9AFB6BC453F37A1C9340C039566BAFC58AE8EC77DF55FFA50CF8F5
        E11253F53CC60A63AD878A0BC26772B9BEA39166238B38638607175F5D649C69
        D172382485A0EB8A4874180FFB435D856DF4DE51D66AABC99A3CF4D8EE7F35CE
        0F9E4F20BBFB9D629A5E27A49A0A2217D41547CEE0B2DC062191F6FA28632992
        096D9EB40B7912193BDA854C775143EE65ED6487AD6E87D8A9FF58F67FCD2AF4
        145B414D57EC7FB95773B2DDB0F67497CFC429965DB85863C6055D6062771A5C
        B43E8BCD09BCE51EF6E89E0E9BF71FCDFCBB5E1E4A7FC621B758EB7E8859B91E
        6429AE8758A5D52156EB7880BD20374972D461371D34D9EC8B46ACC3FF3AF0EF
        03F497F9F6FF19C6FF05FAFF20037F07A849C7EC84CD74EF0000000049454E44
        AE426082}
      Proportional = True
      Stretch = True
    end
    object cxLabel123: TcxLabel
      Left = 32
      Top = 0
      Align = alClient
      AutoSize = False
      ParentColor = False
      ParentFont = False
      Style.Color = clBtnShadow
      Style.Font.Charset = RUSSIAN_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -21
      Style.Font.Name = 'Verdana'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taLeftJustify
      Properties.Alignment.Vert = taVCenter
      Height = 35
      Width = 687
      AnchorY = 18
    end
  end
  object Panel18: TPanel
    Left = 0
    Top = 267
    Width = 719
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
    DesignSize = (
      719
      37)
    object BitBtn_Ok: TBitBtn
      Left = 557
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight, akBottom]
      Caption = 'OK'
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000610B0000610B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E5005A1E1E00783C3C0096646400C8969600FFC8C800465F
        82005591B9006EB9D7008CD2E600B4E6F000D8E9EC0099A8AC00646F7100E2EF
        F100C56A31000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000EEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE180C
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEE2DFEEEEEEEEEEEEEEEEEEEEEEEEEE181212
        0CEEEEEEEEEEEEEEEEEEEEEEEEE28181DFEEEEEEEEEEEEEEEEEEEEEE18121212
        120CEEEEEEEEEEEEEEEEEEEEE281818181DFEEEEEEEEEEEEEEEEEE1812121212
        12120CEEEEEEEEEEEEEEEEE2818181818181DFEEEEEEEEEEEEEEEE1812120C18
        1212120CEEEEEEEEEEEEEEE28181DFE2818181DFEEEEEEEEEEEEEE18120CEEEE
        181212120CEEEEEEEEEEEEE281DFEEEEE2818181DFEEEEEEEEEEEE180CEEEEEE
        EE181212120CEEEEEEEEEEE2DFEEEEEEEEE2818181DFEEEEEEEEEEEEEEEEEEEE
        EEEE181212120CEEEEEEEEEEEEEEEEEEEEEEE2818181DFEEEEEEEEEEEEEEEEEE
        EEEEEE181212120CEEEEEEEEEEEEEEEEEEEEEEE2818181DFEEEEEEEEEEEEEEEE
        EEEEEEEE1812120CEEEEEEEEEEEEEEEEEEEEEEEEE28181DFEEEEEEEEEEEEEEEE
        EEEEEEEEEE18120CEEEEEEEEEEEEEEEEEEEEEEEEEEE281DFEEEEEEEEEEEEEEEE
        EEEEEEEEEEEE180CEEEEEEEEEEEEEEEEEEEEEEEEEEEEE2DFEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE}
      NumGlyphs = 2
      TabOrder = 0
      OnClick = BitBtn_OkClick
    end
    object BitBtn_Cancel: TBitBtn
      Left = 638
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight, akBottom]
      Cancel = True
      Caption = 'Cancel'
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000610B0000610B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E5005A1E1E00783C3C0096646400C8969600FFC8C800465F
        82005591B9006EB9D7008CD2E600B4E6F000D8E9EC0099A8AC00646F7100E2EF
        F100C56A31000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000EEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEB46C6C6CEE
        EEEEEEEEB46C6C6CEEEEEEE2DFDFDFEEEEEEEEEEE2DFDFDFEEEEEEB49090906C
        EEEEEEB49090906CEEEEEEE2818181DFEEEEEEE2818181DFEEEEEEEEB4909090
        6CEEB49090906CEEEEEEEEEEE2818181DFEEE2818181DFEEEEEEEEEEEEB49090
        906C9090906CEEEEEEEEEEEEEEE2818181DF818181DFEEEEEEEEEEEEEEEEB490
        909090906CEEEEEEEEEEEEEEEEEEE28181818181DFEEEEEEEEEEEEEEEEEEEEB4
        9090906CEEEEEEEEEEEEEEEEEEEEEEE2818181DFEEEEEEEEEEEEEEEEEEEEB490
        909090906CEEEEEEEEEEEEEEEEEEE28181818181DFEEEEEEEEEEEEEEEEB49090
        906C9090906CEEEEEEEEEEEEEEE2818181DF818181DFEEEEEEEEEEEEB4909090
        6CEEB49090906CEEEEEEEEEEE2818181DFEEE2818181DFEEEEEEEEB49090906C
        EEEEEEB49090906CEEEEEEE2818181DFEEEEEEE2818181DFEEEEEEB4B4B4B4EE
        EEEEEEEEB4B4B4B4EEEEEEE2E2E2E2EEEEEEEEEEE2E2E2E2EEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
        EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE}
      ModalResult = 2
      NumGlyphs = 2
      TabOrder = 1
    end
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Left'
          'Top'
          'Width'
          'WindowState')
      end>
    StorageName = '\Software\LIS1\CtmTaxes'
    StorageType = stRegistry
    Left = 432
    Top = 24
  end
  object ClientDS_TaxesPar: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 352
    Top = 104
    object ClientDS_TaxesParTax_id: TIntegerField
      FieldName = 'Tax_id'
    end
    object ClientDS_TaxesParid: TIntegerField
      FieldName = 'id'
    end
    object ClientDS_TaxesParcaption: TStringField
      FieldName = 'caption'
      Size = 25
    end
  end
  object DS_TaxesPar: TDataSource
    DataSet = ClientDS_TaxesPar
    Left = 368
    Top = 120
  end
  object ClientDS_Taxes: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <
      item
        Name = 'DataSet_TaxesIndex2'
        Fields = 'TaxID'
        Options = [ixUnique]
      end>
    IndexFieldNames = 'TaxID'
    Params = <>
    StoreDefs = True
    Left = 272
    Top = 64
    object ClientDS_TaxesTaxID: TIntegerField
      FieldName = 'TaxID'
    end
    object ClientDS_TaxesCaption: TStringField
      FieldName = 'Caption'
      Size = 255
    end
    object ClientDS_TaxesParamType: TIntegerField
      FieldName = 'ParamType'
    end
    object ClientDS_TaxesParam: TStringField
      FieldName = 'Param'
      Size = 50
    end
    object ClientDS_TaxesABBR: TStringField
      FieldName = 'ABBR'
      Size = 50
    end
    object ClientDS_TaxesSelect: TBooleanField
      FieldName = 'Select'
    end
    object ClientDS_TaxesSum: TCurrencyField
      FieldName = 'Sum'
    end
    object ClientDS_TaxesLandId: TIntegerField
      FieldName = 'LandId'
    end
    object ClientDS_TaxesParamName: TStringField
      FieldName = 'ParamName'
      Size = 255
    end
    object ClientDS_Taxesrate: TCurrencyField
      FieldName = 'rate'
    end
  end
  object DS_Taxes: TDataSource
    DataSet = ClientDS_Taxes
    Left = 232
    Top = 88
  end
end
