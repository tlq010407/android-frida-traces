.class public final synthetic Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PassportActivity$8;

.field public final synthetic f$1:Lorg/telegram/tgnet/TLObject;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/PassportActivity$8;

    iput-object p2, p0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/tgnet/TLObject;

    iput-object p3, p0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda8;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/PassportActivity$8;

    iget-object v1, p0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda8;->f$1:Lorg/telegram/tgnet/TLObject;

    iget-object v2, p0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda8;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lorg/telegram/ui/PassportActivity$8$$ExternalSyntheticLambda8;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/PassportActivity$8;->$r8$lambda$wuLaFIql6iY5js3MykyfGPQCs0w(Lorg/telegram/ui/PassportActivity$8;Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Z)V

    return-void
.end method
