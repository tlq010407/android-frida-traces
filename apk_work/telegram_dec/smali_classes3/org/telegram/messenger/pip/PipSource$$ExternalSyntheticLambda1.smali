.class public final synthetic Lorg/telegram/messenger/pip/PipSource$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/pip/PipSource;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/pip/PipSource;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/pip/PipSource$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/pip/PipSource;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/pip/PipSource$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/pip/PipSource;

    invoke-virtual {v0}, Lorg/telegram/messenger/pip/PipSource;->invalidatePosition()V

    return-void
.end method
