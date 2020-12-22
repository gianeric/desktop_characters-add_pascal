object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Grava caract'#233'res ao final da linha'
  ClientHeight = 347
  ClientWidth = 755
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 569
    Top = 85
    Width = 53
    Height = 13
    Caption = 'Caract'#233'res'
  end
  object Label2: TLabel
    Left = 3
    Top = 4
    Width = 64
    Height = 13
    Caption = 'Inserir texto:'
  end
  object btnGravaCaracteres: TButton
    Left = 569
    Top = 131
    Width = 182
    Height = 25
    Caption = 'Gravar ao fim da linha'
    TabOrder = 0
    OnClick = btnGravaCaracteresClick
  end
  object edtCaracteres: TEdit
    Left = 569
    Top = 104
    Width = 182
    Height = 21
    TabOrder = 1
  end
  object memo1: TMemo
    Left = 3
    Top = 21
    Width = 560
    Height = 108
    TabOrder = 2
    WordWrap = False
  end
  object memo2: TMemo
    Left = 3
    Top = 135
    Width = 560
    Height = 206
    TabOrder = 3
    WordWrap = False
  end
  object RadioGroup1: TRadioGroup
    Left = 569
    Top = 21
    Width = 178
    Height = 58
    Caption = 'Tipo de Inclus'#227'o '
    Items.Strings = (
      'Campo'
      'Memo')
    TabOrder = 4
    OnClick = RadioGroup1Click
  end
  object memo3: TMemo
    Left = 569
    Top = 162
    Width = 182
    Height = 177
    TabOrder = 5
    WordWrap = False
  end
end
