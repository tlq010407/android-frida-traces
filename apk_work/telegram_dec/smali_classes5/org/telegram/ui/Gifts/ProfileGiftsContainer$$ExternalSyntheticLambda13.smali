.class public final synthetic Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

.field public final synthetic f$1:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda13;->f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda13;->f$1:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1, p1, p2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->$r8$lambda$pkQG4qG42XS37VsupBN_mt76asQ(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
