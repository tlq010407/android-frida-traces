.class public final synthetic Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda93;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ProfileActivity;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLRPC$UserFull;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$UserFull;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda93;->f$0:Lorg/telegram/ui/ProfileActivity;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda93;->f$1:Lorg/telegram/tgnet/TLRPC$UserFull;

    iput p3, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda93;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda93;->f$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda93;->f$1:Lorg/telegram/tgnet/TLRPC$UserFull;

    iget v2, p0, Lorg/telegram/ui/ProfileActivity$$ExternalSyntheticLambda93;->f$2:I

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ProfileActivity;->$r8$lambda$tj9A2c_MWMbuavypJUimhKxzhTg(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/tgnet/TLRPC$UserFull;I)V

    return-void
.end method
