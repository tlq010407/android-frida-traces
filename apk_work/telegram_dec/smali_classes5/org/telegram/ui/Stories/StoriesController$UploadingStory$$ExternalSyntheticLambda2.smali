.class public final synthetic Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesController$UploadingStory$$ExternalSyntheticLambda2;->f$0:Lorg/telegram/ui/Stories/StoriesController$UploadingStory;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/Stories/StoriesController$UploadingStory;->$r8$lambda$HB732J0SX8mrKnyLufKalPhlUvM(Lorg/telegram/ui/Stories/StoriesController$UploadingStory;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
