.class public final synthetic Lorg/telegram/ui/GroupStickersActivity$SearchAdapter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter$$ExternalSyntheticLambda1;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1, p2}, Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;->$r8$lambda$dMnLHfmZ_pGkja8vanYPSyommPs(Lorg/telegram/ui/GroupStickersActivity$SearchAdapter;Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
