.class Lorg/telegram/messenger/AndroidUtilities$7;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/AndroidUtilities;->replaceSingleLink(Ljava/lang/String;ILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$color:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lorg/telegram/messenger/AndroidUtilities$7;->val$color:I

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget v0, p0, Lorg/telegram/messenger/AndroidUtilities$7;->val$color:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
