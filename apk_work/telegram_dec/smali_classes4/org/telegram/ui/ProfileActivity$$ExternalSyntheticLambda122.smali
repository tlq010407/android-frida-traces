.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda122;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$UserFull;

.field public final synthetic f$2:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda122;->f$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda122;->f$1:Lorg/telegram/tgnet/TLRPC$UserFull;

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda122;->f$2:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda122;->f$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda122;->f$1:Lorg/telegram/tgnet/TLRPC$UserFull;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda122;->f$2:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$1LU2m0SgAiMdCxG9zAVd48WGY2o(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
