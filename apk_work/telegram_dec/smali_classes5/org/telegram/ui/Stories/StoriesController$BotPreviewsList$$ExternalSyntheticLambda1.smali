.class public final synthetic Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iput-object p2, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;->$r8$lambda$iv1Iu95x_H6USURhSeIx2jQXLm0(Lorg/telegram/ui/Stories/StoriesController$BotPreviewsList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
