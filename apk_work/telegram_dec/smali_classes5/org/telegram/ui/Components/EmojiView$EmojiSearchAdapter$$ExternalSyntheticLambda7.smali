.class public final synthetic Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/MediaDataController$KeywordResultCallback;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/ArrayList;

.field public final synthetic f$3:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda7;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda7;->f$0:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda7;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda7;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda7;->f$3:Ljava/lang/Runnable;

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->$r8$lambda$NXLKgbxmGsF-JodxhIqqYZDMLRw(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
