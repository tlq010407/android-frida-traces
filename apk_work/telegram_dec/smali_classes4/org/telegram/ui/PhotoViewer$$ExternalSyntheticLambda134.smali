.class public final synthetic Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda134;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback2;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda134;->f$0:Lorg/telegram/ui/PhotoViewer;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$$ExternalSyntheticLambda134;->f$0:Lorg/telegram/ui/PhotoViewer;

    check-cast p1, Landroid/text/style/ClickableSpan;

    check-cast p2, Landroid/widget/TextView;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/PhotoViewer;->$r8$lambda$rcsh4P7yqa28HHuNROTRH1LUjPA(Lorg/telegram/ui/PhotoViewer;Landroid/text/style/ClickableSpan;Landroid/widget/TextView;)V

    return-void
.end method
