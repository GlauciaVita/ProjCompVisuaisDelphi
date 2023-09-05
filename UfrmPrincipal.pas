unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.ComCtrls, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, Vcl.StdCtrls, Vcl.Dialogs, UfrmDataHora;

type
  TFrmPrincipal = class(TForm)
    PnlTitulo: TPanel;
    PgControlPrincipal: TPageControl;
    Aba1: TTabSheet;
    Aba2: TTabSheet;
    Aba3: TTabSheet;
    GroupBox1: TGroupBox;
    BtnExibirDataHora: TButton;
    ImageList1: TImageList;
    EditCaracteres: TEdit;
    RGListaOpcoes: TRadioGroup;
    BtnInserir: TButton;
    Label2: TLabel;
    LstBxItensSelecionados: TListBox;
    BtnLimparAba2: TButton;
    Panel1: TPanel;
    Btn2: TButton;
    Btn3: TButton;
    Panel2: TPanel;
    Btn4: TButton;
    Panel3: TPanel;
    Btn1: TButton;
    LblObs: TLabel;
    Memo1: TMemo;
    BtnSelecionarTudo: TButton;
    BtnLimparAba3: TButton;
    procedure FormShow(Sender: TObject);
    procedure EditCaracteresEnter(Sender: TObject);
    procedure EditCaracteresExit(Sender: TObject);
    procedure BtnExibirDataHoraClick(Sender: TObject);
    procedure Btn1Click(Sender: TObject);
    procedure BtnInserirClick(Sender: TObject);
    procedure BtnLimparAba2Click(Sender: TObject);
    procedure Btn3Click(Sender: TObject);
    procedure Btn2Click(Sender: TObject);
    procedure Btn4Click(Sender: TObject);
    procedure BtnLimparAba3Click(Sender: TObject);
    procedure BtnSelecionarTudoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation



{$R *.dfm}



procedure TFrmPrincipal.BtnExibirDataHoraClick(Sender: TObject);
begin
  FrmDataHora.ShowModal;
end;

procedure TFrmPrincipal.BtnInserirClick(Sender: TObject);
begin
  if RGListaOpcoes.ItemIndex >= 0 then
  begin
    LstBxItensSelecionados.Items.Add(RGListaOpcoes.Items[RGListaOpcoes.ItemIndex]);
    RGListaOpcoes.ItemIndex := -1;
  end
  else
    MessageDlg('Vc nao selecionou nenhum item', mtError, [mbOK], 0);
end;

procedure TFrmPrincipal.Btn1Click(Sender: TObject);
begin
   PgControlPrincipal.ActivePageIndex := 1;
end;

procedure TFrmPrincipal.BtnLimparAba2Click(Sender: TObject);
begin
   LstBxItensSelecionados.Items.Clear;
end;

procedure TFrmPrincipal.BtnLimparAba3Click(Sender: TObject);
begin
   Memo1.Clear;
end;

procedure TFrmPrincipal.BtnSelecionarTudoClick(Sender: TObject);
begin
  Memo1.SelectAll;
  Memo1.SetFocus;
end;

procedure TFrmPrincipal.Btn2Click(Sender: TObject);
begin
  PgControlPrincipal.ActivePageIndex := 0;
end;

procedure TFrmPrincipal.Btn3Click(Sender: TObject);
begin
  PgControlPrincipal.ActivePageIndex := 2;
end;

procedure TFrmPrincipal.Btn4Click(Sender: TObject);
begin
   PgControlPrincipal.ActivePageIndex := 1;
end;


procedure TFrmPrincipal.EditCaracteresEnter(Sender: TObject);
begin
    EditCaracteres.Color := $00B9FFFF;
end;

procedure TFrmPrincipal.EditCaracteresExit(Sender: TObject);
 begin
  if EditCaracteres.Text = '' then
  begin
    MessageDlg('Voc� n�o digitou nenhum conte�do',
         mtInformation, [mbOK], 0);
    EditCaracteres.SetFocus;
  end
  else
    if Length(EditCaracteres.Text) <> 3 then
    begin
      MessageDlg('Voc� n�o digitou 3 caracteres',
           mtError, [mbOK], 0);
      EditCaracteres.SetFocus;
      EditCaracteres.SelectAll;
    end
   else
      EditCaracteres.Color := clWindow;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  PnlTitulo.Caption := 'Eventos basicos do Delphi';
end;



end.
