.class public final synthetic Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ImageLoader;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Lorg/telegram/messenger/ImageLocation;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/messenger/ImageLoader;

    iput-object p2, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda11;->f$3:Lorg/telegram/messenger/ImageLocation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda11;->f$0:Lorg/telegram/messenger/ImageLoader;

    iget-object v1, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda11;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/ImageLoader$$ExternalSyntheticLambda11;->f$3:Lorg/telegram/messenger/ImageLocation;

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->$r8$lambda$VPI0_HgA0fQDIaYJugixGNu8CZw(Lorg/telegram/messenger/ImageLoader;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;)V

    return-void
.end method
