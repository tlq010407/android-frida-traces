.class public final synthetic Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlertAudioLayout$AudioSelectDelegate;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda48;->f$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    return-void
.end method


# virtual methods
.method public final didSelectAudio(Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIJZJ)V
    .locals 11

    .line 0
    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$$ExternalSyntheticLambda48;->f$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-static/range {v1 .. v10}, Lorg/telegram/ui/Components/ChatAttachAlert;->$r8$lambda$2YU1Lm7onyGrw-lJMIhjZT6qPHc(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/util/ArrayList;Ljava/lang/CharSequence;ZIJZJ)V

    return-void
.end method
