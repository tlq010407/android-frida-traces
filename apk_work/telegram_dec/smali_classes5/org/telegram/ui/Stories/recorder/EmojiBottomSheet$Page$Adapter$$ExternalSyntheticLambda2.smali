.class public final synthetic Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;->$r8$lambda$QKkdsEhFddj8PexysvooTs4lcBI(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$Page$Adapter;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
