.class public final synthetic Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda68;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MessagesStorage$BooleanCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/DialogsActivity;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;ILjava/util/HashSet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda68;->f$0:Lorg/telegram/ui/DialogsActivity;

    iput-object p2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda68;->f$1:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda68;->f$2:I

    iput-object p4, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda68;->f$3:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final run(Z)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda68;->f$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda68;->f$1:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda68;->f$2:I

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$$ExternalSyntheticLambda68;->f$3:Ljava/util/HashSet;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/DialogsActivity;->$r8$lambda$0XHUcxwRyQk99z7C4h1OfWjPuBI(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;ILjava/util/HashSet;Z)V

    return-void
.end method
