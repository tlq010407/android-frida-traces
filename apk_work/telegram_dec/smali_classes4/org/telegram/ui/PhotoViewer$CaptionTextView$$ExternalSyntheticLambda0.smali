.class public final synthetic Lorg/telegram/ui/PhotoViewer$CaptionTextView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView$OnLinkPress;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer$CaptionTextView;

.field public final synthetic f$1:Lorg/telegram/messenger/Utilities$Callback2;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer$CaptionTextView;Lorg/telegram/messenger/Utilities$Callback2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/PhotoViewer$CaptionTextView;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/messenger/Utilities$Callback2;

    return-void
.end method


# virtual methods
.method public final run(Landroid/text/style/ClickableSpan;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView$$ExternalSyntheticLambda0;->f$0:Lorg/telegram/ui/PhotoViewer$CaptionTextView;

    iget-object v1, p0, Lorg/telegram/ui/PhotoViewer$CaptionTextView$$ExternalSyntheticLambda0;->f$1:Lorg/telegram/messenger/Utilities$Callback2;

    invoke-static {v0, v1, p1}, Lorg/telegram/ui/PhotoViewer$CaptionTextView;->$r8$lambda$yqi6HGLAQdZ6Nb2d0Glx73C9kyQ(Lorg/telegram/ui/PhotoViewer$CaptionTextView;Lorg/telegram/messenger/Utilities$Callback2;Landroid/text/style/ClickableSpan;)V

    return-void
.end method
