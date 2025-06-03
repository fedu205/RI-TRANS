object fmECPServerContainer: TfmECPServerContainer
  Height = 339
  Width = 519
  PixelsPerInch = 120
  object DSServer1: TDSServer
    AutoStart = False
    Left = 120
    Top = 14
  end
  object DSTCPServerTransport1: TDSTCPServerTransport
    Port = 7400
    Server = DSServer1
    Filters = <>
    AuthenticationManager = DSAuthenticationManager1
    OnConnect = DSTCPServerTransport1Connect
    OnDisconnect = DSTCPServerTransport1Disconnect
    Left = 120
    Top = 91
  end
  object DSServerClass1: TDSServerClass
    OnGetClass = DSServerClass1GetClass
    Server = DSServer1
    Left = 300
    Top = 14
  end
  object DSAuthenticationManager1: TDSAuthenticationManager
    OnUserAuthorize = DSAuthenticationManager1UserAuthorize
    Roles = <>
    Left = 300
    Top = 90
  end
end
