.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda129;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$UserFull;

.field public final synthetic f$3:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda129;->f$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda129;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda129;->f$2:Lorg/telegram/tgnet/TLRPC$UserFull;

    iput-object p4, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda129;->f$3:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iput-object p5, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda129;->f$4:Lorg/telegram/tgnet/TLRPC$TL_error;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda129;->f$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda129;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda129;->f$2:Lorg/telegram/tgnet/TLRPC$UserFull;

    iget-object v3, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda129;->f$3:Lorg/telegram/tgnet/tl/TL_account$TL_birthday;

    iget-object v4, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda129;->f$4:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$asZmS_qiTCJklCOaLN8l24bb95U(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$UserFull;Lorg/telegram/tgnet/tl/TL_account$TL_birthday;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
