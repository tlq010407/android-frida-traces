.class public final synthetic Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PassportActivity;

.field public final synthetic f$1:Lorg/telegram/ui/PassportActivity$ErrorRunnable;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

.field public final synthetic f$5:Z

.field public final synthetic f$6:Ljava/util/ArrayList;

.field public final synthetic f$7:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/PassportActivity$ErrorRunnable;ZLorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;ZLjava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;->f$0:Lorg/telegram/ui/PassportActivity;

    iput-object p2, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;->f$1:Lorg/telegram/ui/PassportActivity$ErrorRunnable;

    iput-boolean p3, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;->f$2:Z

    iput-object p4, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;->f$3:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iput-object p5, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;->f$4:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iput-boolean p6, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;->f$5:Z

    iput-object p7, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;->f$6:Ljava/util/ArrayList;

    iput-object p8, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;->f$7:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;->f$0:Lorg/telegram/ui/PassportActivity;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;->f$1:Lorg/telegram/ui/PassportActivity$ErrorRunnable;

    iget-boolean v2, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;->f$2:Z

    iget-object v3, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;->f$3:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-object v4, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;->f$4:Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;

    iget-boolean v5, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;->f$5:Z

    iget-object v6, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;->f$6:Ljava/util/ArrayList;

    iget-object v7, p0, Lorg/telegram/ui/PassportActivity$$ExternalSyntheticLambda62;->f$7:Ljava/lang/Runnable;

    move-object v8, p1

    move-object v9, p2

    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/PassportActivity;->$r8$lambda$AydNrOC2UEWc630rN87xbTdNNJ0(Lorg/telegram/ui/PassportActivity;Lorg/telegram/ui/PassportActivity$ErrorRunnable;ZLorg/telegram/tgnet/TLRPC$TL_secureRequiredType;Lorg/telegram/tgnet/TLRPC$TL_secureRequiredType;ZLjava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method
