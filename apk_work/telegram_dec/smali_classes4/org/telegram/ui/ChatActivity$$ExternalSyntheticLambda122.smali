.class public final synthetic Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda122;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$1:Lorg/telegram/ui/DialogsActivity;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Ljava/lang/CharSequence;

.field public final synthetic f$4:Z

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda122;->f$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda122;->f$1:Lorg/telegram/ui/DialogsActivity;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda122;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda122;->f$3:Ljava/lang/CharSequence;

    iput-boolean p5, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda122;->f$4:Z

    iput p6, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda122;->f$5:I

    iput-object p7, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda122;->f$6:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 8

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda122;->f$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda122;->f$1:Lorg/telegram/ui/DialogsActivity;

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda122;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda122;->f$3:Ljava/lang/CharSequence;

    iget-boolean v4, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda122;->f$4:Z

    iget v5, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda122;->f$5:I

    iget-object v6, p0, Lorg/telegram/ui/ChatActivity$$ExternalSyntheticLambda122;->f$6:Ljava/util/ArrayList;

    move-object v7, p1

    check-cast v7, Ljava/util/HashMap;

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ChatActivity;->$r8$lambda$RF9jpGX6CDMJEvEhCQG8TgA8ClA(Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZILjava/util/ArrayList;Ljava/util/HashMap;)V

    return-void
.end method
