.class public final synthetic Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/MediaController$MediaLoader;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/MediaController$MediaLoader;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/messenger/MediaController$MediaLoader;

    iput p2, p0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda3;->f$0:Lorg/telegram/messenger/MediaController$MediaLoader;

    iget v1, p0, Lorg/telegram/messenger/MediaController$MediaLoader$$ExternalSyntheticLambda3;->f$1:I

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController$MediaLoader;->$r8$lambda$Ds9EkRDsIW13l7p9mNmb3GRs9y0(Lorg/telegram/messenger/MediaController$MediaLoader;I)V

    return-void
.end method
