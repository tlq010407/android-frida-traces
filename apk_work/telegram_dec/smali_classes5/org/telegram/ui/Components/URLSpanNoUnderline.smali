.class public Lorg/telegram/ui/Components/URLSpanNoUnderline;
.super Landroid/text/style/URLSpan;
.source "SourceFile"


# instance fields
.field private forceNoUnderline:Z

.field public label:Ljava/lang/String;

.field private object:Lorg/telegram/tgnet/TLObject;

.field private style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V
    .locals 2

    .line 0
    if-eqz p1, :cond_0

    const/16 v0, 0x202e

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/URLSpanNoUnderline;->forceNoUnderline:Z

    iput-object p2, p0, Lorg/telegram/ui/Components/URLSpanNoUnderline;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

    iput-boolean p2, p0, Lorg/telegram/ui/Components/URLSpanNoUnderline;->forceNoUnderline:Z

    return-void
.end method


# virtual methods
.method public getObject()Lorg/telegram/tgnet/TLObject;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/URLSpanNoUnderline;->object:Lorg/telegram/tgnet/TLObject;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://t.me/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setObject(Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/URLSpanNoUnderline;->object:Lorg/telegram/tgnet/TLObject;

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    iget-object v2, p0, Lorg/telegram/ui/Components/URLSpanNoUnderline;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->applyStyle(Landroid/text/TextPaint;)V

    :cond_0
    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/URLSpanNoUnderline;->forceNoUnderline:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    return-void
.end method
