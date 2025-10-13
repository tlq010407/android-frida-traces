.class public final synthetic Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/StickersAlert$1;

.field public final synthetic f$1:Ljava/io/File;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Lorg/telegram/ui/ChatActivity;

.field public final synthetic f$4:Lorg/telegram/tgnet/TLRPC$Document;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/StickersAlert$1;Ljava/io/File;Ljava/util/ArrayList;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/StickersAlert$1;

    iput-object p2, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    iput-object p3, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda1;->f$3:Lorg/telegram/ui/ChatActivity;

    iput-object p5, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda1;->f$4:Lorg/telegram/tgnet/TLRPC$Document;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda1;->f$0:Lorg/telegram/ui/Components/StickersAlert$1;

    iget-object v1, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda1;->f$1:Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda1;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda1;->f$3:Lorg/telegram/ui/ChatActivity;

    iget-object v4, p0, Lorg/telegram/ui/Components/StickersAlert$1$$ExternalSyntheticLambda1;->f$4:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/StickersAlert$1;->$r8$lambda$nzgO-NPl1KY6PptPsbsEBdWt11k(Lorg/telegram/ui/Components/StickersAlert$1;Ljava/io/File;Ljava/util/ArrayList;Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$Document;)V

    return-void
.end method
