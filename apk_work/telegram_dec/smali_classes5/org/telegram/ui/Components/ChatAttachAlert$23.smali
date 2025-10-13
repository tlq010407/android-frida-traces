.class Lorg/telegram/ui/Components/ChatAttachAlert$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;->openDocumentsLayout(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$23;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSelectFiles(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;ZIJZJ)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$23;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$15400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$23;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$15400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    move-result-object v2

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move-wide/from16 v11, p9

    invoke-interface/range {v2 .. v12}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->didSelectFiles(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;ZIJZJ)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatAttachAlert$23;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v1, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v2, v1, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    if-eqz v2, :cond_1

    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-wide/from16 v12, p9

    invoke-interface/range {v3 .. v13}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->didSelectFiles(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;ZIJZJ)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lorg/telegram/ui/PassportActivity;

    if-eqz v2, :cond_2

    move-object v3, v1

    check-cast v3, Lorg/telegram/ui/PassportActivity;

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-virtual/range {v3 .. v10}, Lorg/telegram/ui/PassportActivity;->didSelectFiles(Ljava/util/ArrayList;Ljava/lang/String;ZIJZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public didSelectPhotos(Ljava/util/ArrayList;ZIJ)V
    .locals 8

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$23;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$15400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$23;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$15400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->didSelectPhotos(Ljava/util/ArrayList;ZIJ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$23;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/ChatActivity;

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Lorg/telegram/ui/ChatActivity;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/ChatActivity;->didSelectPhotos(Ljava/util/ArrayList;ZIJ)V

    goto :goto_0

    :cond_1
    instance-of p4, v0, Lorg/telegram/ui/PassportActivity;

    if-eqz p4, :cond_2

    check-cast v0, Lorg/telegram/ui/PassportActivity;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/ui/PassportActivity;->didSelectPhotos(Ljava/util/ArrayList;ZI)V

    :cond_2
    :goto_0
    return-void
.end method

.method public startDocumentSelectActivity()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$23;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$15400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$23;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$15400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;->startDocumentSelectActivity()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$23;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    instance-of v1, v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/telegram/ui/Components/ChatAttachAlertDocumentLayout$DocumentSelectActivityDelegate;

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/telegram/ui/PassportActivity;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/telegram/ui/PassportActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/PassportActivity;->startDocumentSelectActivity()V

    :cond_2
    :goto_1
    return-void
.end method

.method public startMusicSelectActivity()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$23;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$15500(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V

    return-void
.end method
