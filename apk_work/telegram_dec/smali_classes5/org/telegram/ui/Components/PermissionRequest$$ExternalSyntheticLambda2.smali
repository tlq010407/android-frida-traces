.class public final synthetic Lorg/telegram/ui/Components/PermissionRequest$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:[Ljava/lang/String;

.field public final synthetic f$1:Landroid/app/Activity;

.field public final synthetic f$2:Lorg/telegram/messenger/Utilities$Callback;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Landroid/app/Activity;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/PermissionRequest$$ExternalSyntheticLambda2;->f$0:[Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/ui/Components/PermissionRequest$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lorg/telegram/ui/Components/PermissionRequest$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/PermissionRequest$$ExternalSyntheticLambda2;->f$0:[Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/Components/PermissionRequest$$ExternalSyntheticLambda2;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lorg/telegram/ui/Components/PermissionRequest$$ExternalSyntheticLambda2;->f$2:Lorg/telegram/messenger/Utilities$Callback;

    check-cast p1, [I

    invoke-static {v0, v1, v2, p1}, Lorg/telegram/ui/Components/PermissionRequest;->$r8$lambda$q9ATOAOAN4Qvrdb6vy7_1KuGHfs([Ljava/lang/String;Landroid/app/Activity;Lorg/telegram/messenger/Utilities$Callback;[I)V

    return-void
.end method
