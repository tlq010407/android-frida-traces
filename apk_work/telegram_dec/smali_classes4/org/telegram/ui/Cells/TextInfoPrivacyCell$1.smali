.class Lorg/telegram/ui/Cells/TextInfoPrivacyCell$1;
.super Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/TextInfoPrivacyCell;Landroid/content/Context;Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell$1;->this$0:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-direct {p0, p2, p3, p4}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/LinkSpanDrawable$LinkCollector;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell$1;->this$0:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->onTextDraw()V

    invoke-super {p0, p1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell$1;->this$0:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->afterTextDraw()V

    return-void
.end method

.method public overrideColor()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell$1;->this$0:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->access$000(Lorg/telegram/ui/Cells/TextInfoPrivacyCell;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextInfoPrivacyCell$1;->this$0:Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->access$000(Lorg/telegram/ui/Cells/TextInfoPrivacyCell;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->overrideColor()I

    move-result v0

    return v0
.end method
