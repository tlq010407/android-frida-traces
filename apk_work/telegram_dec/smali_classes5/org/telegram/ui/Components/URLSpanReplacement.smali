.class public Lorg/telegram/ui/Components/URLSpanReplacement;
.super Landroid/text/style/URLSpan;
.source "SourceFile"


# instance fields
.field private navigateToPremiumBot:Z

.field private style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/ui/Components/URLSpanReplacement;-><init>(Ljava/lang/String;Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;)V

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

    iput-object p2, p0, Lorg/telegram/ui/Components/URLSpanReplacement;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    return-void
.end method


# virtual methods
.method public getTextStyleRun()Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/URLSpanReplacement;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/URLSpanReplacement;->navigateToPremiumBot:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/LaunchActivity;->setNavigateToPremiumBot(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setNavigateToPremiumBot(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/Components/URLSpanReplacement;->navigateToPremiumBot:Z

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-super {p0, p1}, Landroid/text/style/URLSpan;->updateDrawState(Landroid/text/TextPaint;)V

    iget-object v1, p0, Lorg/telegram/ui/Components/URLSpanReplacement;->style:Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/TextStyleSpan$TextStyleRun;->applyStyle(Landroid/text/TextPaint;)V

    iget v1, p1, Landroid/text/TextPaint;->linkColor:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    :cond_1
    return-void
.end method
