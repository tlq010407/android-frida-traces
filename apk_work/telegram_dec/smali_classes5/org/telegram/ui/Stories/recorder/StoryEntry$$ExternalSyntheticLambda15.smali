.class public final synthetic Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/recorder/StoryEntry;

.field public final synthetic f$1:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

.field public final synthetic f$3:Lorg/telegram/tgnet/RequestDelegate;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda15;->f$0:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda15;->f$1:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iput-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda15;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    iput-object p4, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda15;->f$3:Lorg/telegram/tgnet/RequestDelegate;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda15;->f$0:Lorg/telegram/ui/Stories/recorder/StoryEntry;

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda15;->f$1:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda15;->f$2:Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryEntry$$ExternalSyntheticLambda15;->f$3:Lorg/telegram/tgnet/RequestDelegate;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->$r8$lambda$Ae-fTtakoYm6_u-moVGWyXi9PQI(Lorg/telegram/ui/Stories/recorder/StoryEntry;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;Lorg/telegram/tgnet/TLRPC$TL_messages_getAttachedStickers;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
