.class public final synthetic Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/LoginActivity;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/LoginActivity;IZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/LoginActivity;

    iput p2, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda26;->f$1:I

    iput-boolean p3, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda26;->f$2:Z

    iput-boolean p4, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda26;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda26;->f$0:Lorg/telegram/ui/LoginActivity;

    iget v1, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda26;->f$1:I

    iget-boolean v2, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda26;->f$2:Z

    iget-boolean v3, p0, Lorg/telegram/ui/LoginActivity$$ExternalSyntheticLambda26;->f$3:Z

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/LoginActivity;->$r8$lambda$w2zKrw-R7_x2tmURTkS5VfHN8Ao(Lorg/telegram/ui/LoginActivity;IZZ)V

    return-void
.end method
