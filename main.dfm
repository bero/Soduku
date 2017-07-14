object SodukuForm: TSodukuForm
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'SodukuForm'
  ClientHeight = 552
  ClientWidth = 502
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCommands: TPanel
    Left = 0
    Top = 502
    Width = 502
    Height = 50
    Align = alBottom
    TabOrder = 0
    object btnSave: TButton
      Left = 1
      Top = 1
      Width = 88
      Height = 48
      Align = alLeft
      Caption = 'Save'
      TabOrder = 0
      OnClick = btnSaveClick
    end
    object btnLoad: TButton
      Left = 89
      Top = 1
      Width = 88
      Height = 48
      Align = alLeft
      Caption = 'Load'
      TabOrder = 1
      OnClick = btnLoadClick
    end
    object btnExit: TButton
      Left = 413
      Top = 1
      Width = 88
      Height = 48
      Align = alRight
      Caption = 'Exit'
      TabOrder = 2
      OnClick = btnExitClick
    end
  end
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 502
    Height = 502
    Align = alClient
    ColumnCollection = <
      item
        Value = 33.333333333333340000
      end
      item
        Value = 33.333333333333340000
      end
      item
        Value = 33.333333333333340000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = s11
        Row = 0
      end
      item
        Column = 1
        Control = s12
        Row = 0
      end
      item
        Column = 2
        Control = s13
        Row = 0
      end
      item
        Column = 0
        Control = s21
        Row = 1
      end
      item
        Column = 1
        Control = s22
        Row = 1
      end
      item
        Column = 2
        Control = s23
        Row = 1
      end
      item
        Column = 0
        Control = s31
        Row = 2
      end
      item
        Column = 1
        Control = s32
        Row = 2
      end
      item
        Column = 2
        Control = s33
        Row = 2
      end>
    RowCollection = <
      item
        Value = 33.333333333333340000
      end
      item
        Value = 33.333333333333340000
      end
      item
        Value = 33.333333333333340000
      end>
    TabOrder = 1
    DesignSize = (
      502
      502)
    inline s11: TFrameSoduku
      Left = 1
      Top = 1
      Width = 166
      Height = 166
      Anchors = []
      TabOrder = 0
      inherited pnlSoduku: TGridPanel
        Width = 166
        Height = 166
        ControlCollection = <
          item
            Column = 0
            Control = s11.txt11
            Row = 0
          end
          item
            Column = 1
            Control = s11.txt12
            Row = 0
          end
          item
            Column = 2
            Control = s11.txt13
            Row = 0
          end
          item
            Column = 0
            Control = s11.txt21
            Row = 1
          end
          item
            Column = 1
            Control = s11.txt22
            Row = 1
          end
          item
            Column = 2
            Control = s11.txt23
            Row = 1
          end
          item
            Column = 0
            Control = s11.txt31
            Row = 2
          end
          item
            Column = 1
            Control = s11.txt32
            Row = 2
          end
          item
            Column = 2
            Control = s11.txt33
            Row = 2
          end>
        inherited txt11: TEdit
          Width = 54
          Height = 54
        end
        inherited txt12: TEdit
          Left = 55
          Width = 54
          Height = 54
        end
        inherited txt13: TEdit
          Left = 109
          Width = 56
          Height = 54
        end
        inherited txt21: TEdit
          Top = 55
          Width = 54
          Height = 54
        end
        inherited txt22: TEdit
          Left = 55
          Top = 55
          Width = 54
          Height = 54
        end
        inherited txt23: TEdit
          Left = 109
          Top = 55
          Width = 56
          Height = 54
        end
        inherited txt31: TEdit
          Top = 109
          Width = 54
          Height = 56
        end
        inherited txt32: TEdit
          Left = 55
          Top = 109
          Width = 54
          Height = 56
        end
        inherited txt33: TEdit
          Left = 109
          Top = 109
          Width = 56
          Height = 56
        end
      end
    end
    inline s12: TFrameSoduku
      Left = 167
      Top = 1
      Width = 166
      Height = 166
      Anchors = []
      TabOrder = 1
      inherited pnlSoduku: TGridPanel
        Width = 166
        Height = 166
        ControlCollection = <
          item
            Column = 0
            Control = s12.txt11
            Row = 0
          end
          item
            Column = 1
            Control = s12.txt12
            Row = 0
          end
          item
            Column = 2
            Control = s12.txt13
            Row = 0
          end
          item
            Column = 0
            Control = s12.txt21
            Row = 1
          end
          item
            Column = 1
            Control = s12.txt22
            Row = 1
          end
          item
            Column = 2
            Control = s12.txt23
            Row = 1
          end
          item
            Column = 0
            Control = s12.txt31
            Row = 2
          end
          item
            Column = 1
            Control = s12.txt32
            Row = 2
          end
          item
            Column = 2
            Control = s12.txt33
            Row = 2
          end>
        inherited txt11: TEdit
          Width = 54
          Height = 54
        end
        inherited txt12: TEdit
          Left = 55
          Width = 54
          Height = 54
        end
        inherited txt13: TEdit
          Left = 109
          Width = 56
          Height = 54
        end
        inherited txt21: TEdit
          Top = 55
          Width = 54
          Height = 54
        end
        inherited txt22: TEdit
          Left = 55
          Top = 55
          Width = 54
          Height = 54
        end
        inherited txt23: TEdit
          Left = 109
          Top = 55
          Width = 56
          Height = 54
        end
        inherited txt31: TEdit
          Top = 109
          Width = 54
          Height = 56
        end
        inherited txt32: TEdit
          Left = 55
          Top = 109
          Width = 54
          Height = 56
        end
        inherited txt33: TEdit
          Left = 109
          Top = 109
          Width = 56
          Height = 56
        end
      end
    end
    inline s13: TFrameSoduku
      Left = 333
      Top = 1
      Width = 168
      Height = 166
      Anchors = []
      TabOrder = 2
      inherited pnlSoduku: TGridPanel
        Width = 168
        Height = 166
        ControlCollection = <
          item
            Column = 0
            Control = s13.txt11
            Row = 0
          end
          item
            Column = 1
            Control = s13.txt12
            Row = 0
          end
          item
            Column = 2
            Control = s13.txt13
            Row = 0
          end
          item
            Column = 0
            Control = s13.txt21
            Row = 1
          end
          item
            Column = 1
            Control = s13.txt22
            Row = 1
          end
          item
            Column = 2
            Control = s13.txt23
            Row = 1
          end
          item
            Column = 0
            Control = s13.txt31
            Row = 2
          end
          item
            Column = 1
            Control = s13.txt32
            Row = 2
          end
          item
            Column = 2
            Control = s13.txt33
            Row = 2
          end>
        inherited txt11: TEdit
          Width = 55
          Height = 54
        end
        inherited txt12: TEdit
          Left = 56
          Width = 55
          Height = 54
        end
        inherited txt13: TEdit
          Left = 111
          Width = 56
          Height = 54
        end
        inherited txt21: TEdit
          Top = 55
          Width = 55
          Height = 54
        end
        inherited txt22: TEdit
          Left = 56
          Top = 55
          Width = 55
          Height = 54
        end
        inherited txt23: TEdit
          Left = 111
          Top = 55
          Width = 56
          Height = 54
        end
        inherited txt31: TEdit
          Top = 109
          Width = 55
          Height = 56
        end
        inherited txt32: TEdit
          Left = 56
          Top = 109
          Width = 55
          Height = 56
        end
        inherited txt33: TEdit
          Left = 111
          Top = 109
          Width = 56
          Height = 56
        end
      end
    end
    inline s21: TFrameSoduku
      Left = 1
      Top = 167
      Width = 166
      Height = 166
      Anchors = []
      TabOrder = 3
      inherited pnlSoduku: TGridPanel
        Width = 166
        Height = 166
        ControlCollection = <
          item
            Column = 0
            Control = s21.txt11
            Row = 0
          end
          item
            Column = 1
            Control = s21.txt12
            Row = 0
          end
          item
            Column = 2
            Control = s21.txt13
            Row = 0
          end
          item
            Column = 0
            Control = s21.txt21
            Row = 1
          end
          item
            Column = 1
            Control = s21.txt22
            Row = 1
          end
          item
            Column = 2
            Control = s21.txt23
            Row = 1
          end
          item
            Column = 0
            Control = s21.txt31
            Row = 2
          end
          item
            Column = 1
            Control = s21.txt32
            Row = 2
          end
          item
            Column = 2
            Control = s21.txt33
            Row = 2
          end>
        inherited txt11: TEdit
          Width = 54
          Height = 54
        end
        inherited txt12: TEdit
          Left = 55
          Width = 54
          Height = 54
        end
        inherited txt13: TEdit
          Left = 109
          Width = 56
          Height = 54
        end
        inherited txt21: TEdit
          Top = 55
          Width = 54
          Height = 54
        end
        inherited txt22: TEdit
          Left = 55
          Top = 55
          Width = 54
          Height = 54
        end
        inherited txt23: TEdit
          Left = 109
          Top = 55
          Width = 56
          Height = 54
        end
        inherited txt31: TEdit
          Top = 109
          Width = 54
          Height = 56
        end
        inherited txt32: TEdit
          Left = 55
          Top = 109
          Width = 54
          Height = 56
        end
        inherited txt33: TEdit
          Left = 109
          Top = 109
          Width = 56
          Height = 56
        end
      end
    end
    inline s22: TFrameSoduku
      Left = 167
      Top = 167
      Width = 166
      Height = 166
      Anchors = []
      TabOrder = 4
      inherited pnlSoduku: TGridPanel
        Width = 166
        Height = 166
        ControlCollection = <
          item
            Column = 0
            Control = s22.txt11
            Row = 0
          end
          item
            Column = 1
            Control = s22.txt12
            Row = 0
          end
          item
            Column = 2
            Control = s22.txt13
            Row = 0
          end
          item
            Column = 0
            Control = s22.txt21
            Row = 1
          end
          item
            Column = 1
            Control = s22.txt22
            Row = 1
          end
          item
            Column = 2
            Control = s22.txt23
            Row = 1
          end
          item
            Column = 0
            Control = s22.txt31
            Row = 2
          end
          item
            Column = 1
            Control = s22.txt32
            Row = 2
          end
          item
            Column = 2
            Control = s22.txt33
            Row = 2
          end>
        inherited txt11: TEdit
          Width = 54
          Height = 54
        end
        inherited txt12: TEdit
          Left = 55
          Width = 54
          Height = 54
        end
        inherited txt13: TEdit
          Left = 109
          Width = 56
          Height = 54
        end
        inherited txt21: TEdit
          Top = 55
          Width = 54
          Height = 54
        end
        inherited txt22: TEdit
          Left = 55
          Top = 55
          Width = 54
          Height = 54
        end
        inherited txt23: TEdit
          Left = 109
          Top = 55
          Width = 56
          Height = 54
        end
        inherited txt31: TEdit
          Top = 109
          Width = 54
          Height = 56
        end
        inherited txt32: TEdit
          Left = 55
          Top = 109
          Width = 54
          Height = 56
        end
        inherited txt33: TEdit
          Left = 109
          Top = 109
          Width = 56
          Height = 56
        end
      end
    end
    inline s23: TFrameSoduku
      Left = 333
      Top = 167
      Width = 168
      Height = 166
      Anchors = []
      TabOrder = 5
      inherited pnlSoduku: TGridPanel
        Width = 168
        Height = 166
        ControlCollection = <
          item
            Column = 0
            Control = s23.txt11
            Row = 0
          end
          item
            Column = 1
            Control = s23.txt12
            Row = 0
          end
          item
            Column = 2
            Control = s23.txt13
            Row = 0
          end
          item
            Column = 0
            Control = s23.txt21
            Row = 1
          end
          item
            Column = 1
            Control = s23.txt22
            Row = 1
          end
          item
            Column = 2
            Control = s23.txt23
            Row = 1
          end
          item
            Column = 0
            Control = s23.txt31
            Row = 2
          end
          item
            Column = 1
            Control = s23.txt32
            Row = 2
          end
          item
            Column = 2
            Control = s23.txt33
            Row = 2
          end>
        inherited txt11: TEdit
          Width = 55
          Height = 54
        end
        inherited txt12: TEdit
          Left = 56
          Width = 55
          Height = 54
        end
        inherited txt13: TEdit
          Left = 111
          Width = 56
          Height = 54
        end
        inherited txt21: TEdit
          Top = 55
          Width = 55
          Height = 54
        end
        inherited txt22: TEdit
          Left = 56
          Top = 55
          Width = 55
          Height = 54
        end
        inherited txt23: TEdit
          Left = 111
          Top = 55
          Width = 56
          Height = 54
        end
        inherited txt31: TEdit
          Top = 109
          Width = 55
          Height = 56
        end
        inherited txt32: TEdit
          Left = 56
          Top = 109
          Width = 55
          Height = 56
        end
        inherited txt33: TEdit
          Left = 111
          Top = 109
          Width = 56
          Height = 56
        end
      end
    end
    inline s31: TFrameSoduku
      Left = 1
      Top = 333
      Width = 166
      Height = 168
      Anchors = []
      TabOrder = 6
      inherited pnlSoduku: TGridPanel
        Width = 166
        Height = 168
        ControlCollection = <
          item
            Column = 0
            Control = s31.txt11
            Row = 0
          end
          item
            Column = 1
            Control = s31.txt12
            Row = 0
          end
          item
            Column = 2
            Control = s31.txt13
            Row = 0
          end
          item
            Column = 0
            Control = s31.txt21
            Row = 1
          end
          item
            Column = 1
            Control = s31.txt22
            Row = 1
          end
          item
            Column = 2
            Control = s31.txt23
            Row = 1
          end
          item
            Column = 0
            Control = s31.txt31
            Row = 2
          end
          item
            Column = 1
            Control = s31.txt32
            Row = 2
          end
          item
            Column = 2
            Control = s31.txt33
            Row = 2
          end>
        inherited txt11: TEdit
          Width = 54
          Height = 55
        end
        inherited txt12: TEdit
          Left = 55
          Width = 54
          Height = 55
        end
        inherited txt13: TEdit
          Left = 109
          Width = 56
          Height = 55
        end
        inherited txt21: TEdit
          Top = 56
          Width = 54
          Height = 55
        end
        inherited txt22: TEdit
          Left = 55
          Top = 56
          Width = 54
          Height = 55
        end
        inherited txt23: TEdit
          Left = 109
          Top = 56
          Width = 56
          Height = 55
        end
        inherited txt31: TEdit
          Top = 111
          Width = 54
          Height = 56
        end
        inherited txt32: TEdit
          Left = 55
          Top = 111
          Width = 54
          Height = 56
        end
        inherited txt33: TEdit
          Left = 109
          Top = 111
          Width = 56
          Height = 56
        end
      end
    end
    inline s32: TFrameSoduku
      Left = 167
      Top = 333
      Width = 166
      Height = 168
      Anchors = []
      TabOrder = 7
      inherited pnlSoduku: TGridPanel
        Width = 166
        Height = 168
        ControlCollection = <
          item
            Column = 0
            Control = s32.txt11
            Row = 0
          end
          item
            Column = 1
            Control = s32.txt12
            Row = 0
          end
          item
            Column = 2
            Control = s32.txt13
            Row = 0
          end
          item
            Column = 0
            Control = s32.txt21
            Row = 1
          end
          item
            Column = 1
            Control = s32.txt22
            Row = 1
          end
          item
            Column = 2
            Control = s32.txt23
            Row = 1
          end
          item
            Column = 0
            Control = s32.txt31
            Row = 2
          end
          item
            Column = 1
            Control = s32.txt32
            Row = 2
          end
          item
            Column = 2
            Control = s32.txt33
            Row = 2
          end>
        inherited txt11: TEdit
          Width = 54
          Height = 55
        end
        inherited txt12: TEdit
          Left = 55
          Width = 54
          Height = 55
        end
        inherited txt13: TEdit
          Left = 109
          Width = 56
          Height = 55
        end
        inherited txt21: TEdit
          Top = 56
          Width = 54
          Height = 55
        end
        inherited txt22: TEdit
          Left = 55
          Top = 56
          Width = 54
          Height = 55
        end
        inherited txt23: TEdit
          Left = 109
          Top = 56
          Width = 56
          Height = 55
        end
        inherited txt31: TEdit
          Top = 111
          Width = 54
          Height = 56
        end
        inherited txt32: TEdit
          Left = 55
          Top = 111
          Width = 54
          Height = 56
        end
        inherited txt33: TEdit
          Left = 109
          Top = 111
          Width = 56
          Height = 56
        end
      end
    end
    inline s33: TFrameSoduku
      Left = 333
      Top = 333
      Width = 168
      Height = 168
      Anchors = []
      TabOrder = 8
      inherited pnlSoduku: TGridPanel
        Width = 168
        Height = 168
        ControlCollection = <
          item
            Column = 0
            Control = s33.txt11
            Row = 0
          end
          item
            Column = 1
            Control = s33.txt12
            Row = 0
          end
          item
            Column = 2
            Control = s33.txt13
            Row = 0
          end
          item
            Column = 0
            Control = s33.txt21
            Row = 1
          end
          item
            Column = 1
            Control = s33.txt22
            Row = 1
          end
          item
            Column = 2
            Control = s33.txt23
            Row = 1
          end
          item
            Column = 0
            Control = s33.txt31
            Row = 2
          end
          item
            Column = 1
            Control = s33.txt32
            Row = 2
          end
          item
            Column = 2
            Control = s33.txt33
            Row = 2
          end>
        inherited txt11: TEdit
          Width = 55
          Height = 55
        end
        inherited txt12: TEdit
          Left = 56
          Width = 55
          Height = 55
        end
        inherited txt13: TEdit
          Left = 111
          Width = 56
          Height = 55
        end
        inherited txt21: TEdit
          Top = 56
          Width = 55
          Height = 55
        end
        inherited txt22: TEdit
          Left = 56
          Top = 56
          Width = 55
          Height = 55
        end
        inherited txt23: TEdit
          Left = 111
          Top = 56
          Width = 56
          Height = 55
        end
        inherited txt31: TEdit
          Top = 111
          Width = 55
          Height = 56
        end
        inherited txt32: TEdit
          Left = 56
          Top = 111
          Width = 55
          Height = 56
        end
        inherited txt33: TEdit
          Left = 111
          Top = 111
          Width = 56
          Height = 56
        end
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 368
    Top = 504
  end
  object SaveDialog1: TSaveDialog
    Left = 288
    Top = 504
  end
end
