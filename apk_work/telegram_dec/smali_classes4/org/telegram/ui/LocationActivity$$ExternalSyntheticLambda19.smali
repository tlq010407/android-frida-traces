.class public final synthetic Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MessagesStorage$IntCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LocationActivity;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lorg/telegram/tgnet/TLRPC$User;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LocationActivity;ZLorg/telegram/tgnet/TLRPC$User;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/ui/LocationActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda19;->f$1:Z

    iput-object p3, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda19;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    iput p4, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda19;->f$3:I

    return-void
.end method


# virtual methods
.method public final run(I)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda19;->f$0:Lorg/telegram/ui/LocationActivity;

    iget-boolean v1, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda19;->f$1:Z

    iget-object v2, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda19;->f$2:Lorg/telegram/tgnet/TLRPC$User;

    iget v3, p0, Lorg/telegram/ui/LocationActivity$$ExternalSyntheticLambda19;->f$3:I

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/LocationActivity;->$r8$lambda$pbyGMh70SdJ3ogE5htnK7Bc5TNY(Lorg/telegram/ui/LocationActivity;ZLorg/telegram/tgnet/TLRPC$User;II)V

    return-void
.end method
