.class public final synthetic Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/messenger/ChatThemeController;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lorg/telegram/tgnet/ResultCallback;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/messenger/ChatThemeController;Ljava/util/List;Lorg/telegram/tgnet/ResultCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/ChatThemeController;

    iput-object p2, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iput-object p3, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/tgnet/ResultCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/messenger/ChatThemeController;

    iget-object v1, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda1;->f$1:Ljava/util/List;

    iget-object v2, p0, Lorg/telegram/messenger/ChatThemeController$$ExternalSyntheticLambda1;->f$2:Lorg/telegram/tgnet/ResultCallback;

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/ChatThemeController;->$r8$lambda$syBw9fcSVqFn-GgkkkjMihRcAL0(Lorg/telegram/messenger/ChatThemeController;Ljava/util/List;Lorg/telegram/tgnet/ResultCallback;)V

    return-void
.end method
