.class public final synthetic Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ArticleViewer;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda62;->f$0:Lorg/telegram/ui/ArticleViewer;

    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda62;->f$1:Ljava/lang/String;

    iput p3, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda62;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda62;->f$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda62;->f$1:Ljava/lang/String;

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$$ExternalSyntheticLambda62;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->$r8$lambda$-IGiWhEoZNQgo4wDUrw9RtVmsUA(Lorg/telegram/ui/ArticleViewer;Ljava/lang/String;I)V

    return-void
.end method
