.class Lorg/telegram/ui/Components/ColorPicker$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ColorPicker;-><init>(Landroid/content/Context;ZLorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ColorPicker;

.field final synthetic val$num:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ColorPicker;I)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ColorPicker$4;->this$0:Lorg/telegram/ui/Components/ColorPicker;

    iput p2, p0, Lorg/telegram/ui/Components/ColorPicker$4;->val$num:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPicker$4;->this$0:Lorg/telegram/ui/Components/ColorPicker;

    iget-boolean v4, v3, Lorg/telegram/ui/Components/ColorPicker;->ignoreTextChange:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iput-boolean v2, v3, Lorg/telegram/ui/Components/ColorPicker;->ignoreTextChange:Z

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-lt v4, v5, :cond_1

    const/16 v5, 0x39

    if-le v4, v5, :cond_4

    :cond_1
    const/16 v5, 0x61

    if-lt v4, v5, :cond_2

    const/16 v5, 0x66

    if-le v4, v5, :cond_4

    :cond_2
    const/16 v5, 0x41

    if-lt v4, v5, :cond_3

    const/16 v5, 0x46

    if-le v4, v5, :cond_4

    :cond_3
    add-int/lit8 v4, v3, 0x1

    const-string v5, ""

    invoke-interface {p1, v3, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/2addr v3, v0

    :cond_4
    add-int/2addr v3, v2

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_6

    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker$4;->this$0:Lorg/telegram/ui/Components/ColorPicker;

    iput-boolean v1, p1, Lorg/telegram/ui/Components/ColorPicker;->ignoreTextChange:Z

    return-void

    :cond_6
    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPicker$4;->this$0:Lorg/telegram/ui/Components/ColorPicker;

    iget v4, p0, Lorg/telegram/ui/Components/ColorPicker$4;->val$num:I

    invoke-static {v3, v4, v0}, Lorg/telegram/ui/Components/ColorPicker;->access$300(Lorg/telegram/ui/Components/ColorPicker;II)I

    move-result v0

    invoke-static {v3, v0}, Lorg/telegram/ui/Components/ColorPicker;->access$400(Lorg/telegram/ui/Components/ColorPicker;I)V

    iget-object v0, p0, Lorg/telegram/ui/Components/ColorPicker$4;->this$0:Lorg/telegram/ui/Components/ColorPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ColorPicker;->getColor()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v1

    aput-object v5, v7, v2

    const/4 v4, 0x2

    aput-object v6, v7, v4

    const-string v4, "%02x%02x%02x"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPicker$4;->this$0:Lorg/telegram/ui/Components/ColorPicker;

    invoke-static {v3}, Lorg/telegram/ui/Components/ColorPicker;->access$100(Lorg/telegram/ui/Components/ColorPicker;)[Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object v3

    iget v4, p0, Lorg/telegram/ui/Components/ColorPicker$4;->val$num:I

    aget-object v3, v3, v4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->setSelection(I)V

    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker$4;->this$0:Lorg/telegram/ui/Components/ColorPicker;

    invoke-static {p1}, Lorg/telegram/ui/Components/ColorPicker;->access$500(Lorg/telegram/ui/Components/ColorPicker;)[Lorg/telegram/ui/Components/ColorPicker$RadioButton;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPicker$4;->this$0:Lorg/telegram/ui/Components/ColorPicker;

    invoke-static {v3}, Lorg/telegram/ui/Components/ColorPicker;->access$600(Lorg/telegram/ui/Components/ColorPicker;)I

    move-result v3

    aget-object p1, p1, v3

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/ColorPicker$RadioButton;->setColor(I)V

    iget-object p1, p0, Lorg/telegram/ui/Components/ColorPicker$4;->this$0:Lorg/telegram/ui/Components/ColorPicker;

    invoke-static {p1}, Lorg/telegram/ui/Components/ColorPicker;->access$700(Lorg/telegram/ui/Components/ColorPicker;)Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;

    move-result-object p1

    iget-object v3, p0, Lorg/telegram/ui/Components/ColorPicker$4;->this$0:Lorg/telegram/ui/Components/ColorPicker;

    invoke-static {v3}, Lorg/telegram/ui/Components/ColorPicker;->access$600(Lorg/telegram/ui/Components/ColorPicker;)I

    move-result v3

    invoke-interface {p1, v0, v3, v2}, Lorg/telegram/ui/Components/ColorPicker$ColorPickerDelegate;->setColor(IIZ)V

    goto/16 :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
