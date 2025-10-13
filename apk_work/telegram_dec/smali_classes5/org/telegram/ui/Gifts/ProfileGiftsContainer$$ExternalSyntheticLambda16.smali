.class public final synthetic Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

.field public final synthetic f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iput-object p2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda16;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda16;->f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda16;->f$0:Lorg/telegram/ui/Gifts/ProfileGiftsContainer;

    iget-object v1, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda16;->f$1:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, p0, Lorg/telegram/ui/Gifts/ProfileGiftsContainer$$ExternalSyntheticLambda16;->f$2:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Gifts/ProfileGiftsContainer;->$r8$lambda$y-TVCxDZ1PmJqcrs_VpyG7EHzMk(Lorg/telegram/ui/Gifts/ProfileGiftsContainer;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-void
.end method
