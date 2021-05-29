unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxClasses, cxGridLevel, cxGrid, cxGridChartView, cxGridDBChartView,
  cxGridCardView, cxGridDBCardView, cxGridCustomLayoutView, Menus, ExtCtrls,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxLayoutContainer, cxGridLayoutView,
  cxGridDBLayoutView, Mask;

type
  TFrmGiris = class(TForm)
    ADOConnection1: TADOConnection;
    ADOMusteriTable: TADOTable;
    DataSource1: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    Panel1: TPanel;
    Panel3: TPanel;
    Grid: TcxGrid;
    DBCardMusteriView: TcxGridDBCardView;
    cxGridMusteri: TcxGridLevel;
    DBCardMusteriViewid: TcxGridDBCardViewRow;
    DBCardMusteriViewadisoyadi: TcxGridDBCardViewRow;
    DBCardMusteriViewadres: TcxGridDBCardViewRow;
    DBCardMusteriViewtelefon: TcxGridDBCardViewRow;
    DBCardMusteriViewins_user: TcxGridDBCardViewRow;
    DBCardMusteriViewins_date: TcxGridDBCardViewRow;
    DBCardMusteriViewupd_user: TcxGridDBCardViewRow;
    DBCardMusteriViewupd_date: TcxGridDBCardViewRow;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    GridCardViewStyleSheetRainyDay: TcxGridCardViewStyleSheet;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    GridUrun: TcxGridLevel;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    ADOUrunTable: TADOTable;
    DataSource2: TDataSource;
    GridDBCardViewUrun: TcxGridDBCardView;
    GridDBCardViewUrunurun_id: TcxGridDBCardViewRow;
    GridDBCardViewUrunurun_kodu: TcxGridDBCardViewRow;
    GridDBCardViewUrunurun_adi: TcxGridDBCardViewRow;
    GridDBCardViewUrunurun_fiyat: TcxGridDBCardViewRow;
    GridDBCardViewUrunurun_miktar: TcxGridDBCardViewRow;
    GridDBCardViewUrunins_user: TcxGridDBCardViewRow;
    GridDBCardViewUrunins_date: TcxGridDBCardViewRow;
    GridDBCardViewUrunupd_user: TcxGridDBCardViewRow;
    GridDBCardViewUrunupd_date: TcxGridDBCardViewRow;
    cxGridCardViewStyleSheet1: TcxGridCardViewStyleSheet;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    GridSiparis: TcxGridLevel;
    GridDBCardViewSiparis: TcxGridDBCardView;
    ADOSiparisTable: TADOTable;
    DataSource3: TDataSource;
    GridDBCardViewSiparisid: TcxGridDBCardViewRow;
    GridDBCardViewSiparissira_no: TcxGridDBCardViewRow;
    GridDBCardViewSiparisurun_adi: TcxGridDBCardViewRow;
    GridDBCardViewSiparisurun_kodu: TcxGridDBCardViewRow;
    GridDBCardViewSiparismiktar: TcxGridDBCardViewRow;
    GridDBCardViewSiparisfiyat: TcxGridDBCardViewRow;
    GridDBCardViewSiparisiskonto_oran: TcxGridDBCardViewRow;
    GridDBCardViewSiparisiskonto_tutar: TcxGridDBCardViewRow;
    GridDBCardViewSiparistoplam_tutar: TcxGridDBCardViewRow;
    GridDBCardViewSiparisurun_id: TcxGridDBCardViewRow;
    GridDBCardViewSiparisins_user: TcxGridDBCardViewRow;
    GridDBCardViewSiparisins_date: TcxGridDBCardViewRow;
    GridDBCardViewSiparisupd_user: TcxGridDBCardViewRow;
    GridDBCardViewSiparisupd_date: TcxGridDBCardViewRow;
    GridCardViewStyleSheetBrick: TcxGridCardViewStyleSheet;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    btnExcell: TButton;
    BtnHtml: TButton;
    btnXml: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcellClick(Sender: TObject);
    procedure BtnHtmlClick(Sender: TObject);
    procedure btnXmlClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGiris: TFrmGiris;

implementation
 uses unit1,unit5,unit6,unit7,Brlibrary;

{$R *.dfm}

procedure TFrmGiris.btnExcellClick(Sender: TObject);
begin
  ExportOther('E',Grid);
end;

procedure TFrmGiris.BtnHtmlClick(Sender: TObject);
begin
  ExportOther('H',Grid);
end;

procedure TFrmGiris.btnXmlClick(Sender: TObject);
begin
  ExportOther('X',Grid);
end;

procedure TFrmGiris.Button1Click(Sender: TObject);
begin
  CreateMusteriForm;
end;

procedure TFrmGiris.Button2Click(Sender: TObject);
begin
  CreateUrunForm(0);
end;

procedure TFrmGiris.Button3Click(Sender: TObject);
begin
  CreateSiparisDetailForm(1);
end;

procedure TFrmGiris.Button4Click(Sender: TObject);
begin
  CreateSiparisMasterForm;
end;

procedure TFrmGiris.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  adoconnection1.Close;
end;

procedure TFrmGiris.FormCreate(Sender: TObject);
begin
  Adoconnection1.close;
  adoconnection1.ConnectionString:='Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;User ID="";Initial Catalog=Delphi;Data Source=.;Initial File Name="";Server SPN=""';
  adoconnection1.open;
end;

procedure TFrmGiris.FormShow(Sender: TObject);
begin
  ADOMusteriTable.Open();
  ADOUrunTable.Open();
  ADOSiparisTable.Open();
end;

end.
