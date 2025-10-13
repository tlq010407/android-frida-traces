.class public final synthetic Lorg/telegram/ui/PhotoViewer$17$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/PhotoViewer$17;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Lorg/telegram/ui/ChatActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/PhotoViewer$17;Ljava/util/ArrayList;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$17$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/PhotoViewer$17;

    iput-object p2, p0, Lorg/telegram/ui/PhotoViewer$17$$ExternalSyntheticLambda14;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/telegram/ui/PhotoViewer$17$$ExternalSyntheticLambda14;->f$2:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public final didSelectDialogs(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z
    .locals 11

    .line 0
    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/PhotoViewer$17$$ExternalSyntheticLambda14;->f$0:Lorg/telegram/ui/PhotoViewer$17;

    iget-object v2, v0, Lorg/telegram/ui/PhotoViewer$17$$ExternalSyntheticLambda14;->f$1:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/PhotoViewer$17$$ExternalSyntheticLambda14;->f$2:Lorg/telegram/ui/ChatActivity;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/PhotoViewer$17;->$r8$lambda$mydXfQOHMzKr6aor9xe0Kgyybok(Lorg/telegram/ui/PhotoViewer$17;Ljava/util/ArrayList;Lorg/telegram/ui/ChatActivity;Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZZILorg/telegram/ui/TopicsFragment;)Z

    move-result v1

    return v1
.end method
