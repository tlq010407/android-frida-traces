.class public final synthetic Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$Callback;


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

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda8;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda8;->f$3:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda8;->f$0:Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda8;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter$$ExternalSyntheticLambda8;->f$3:Ljava/lang/Runnable;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, p1}, Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;->$r8$lambda$ZgAo46KC89P28cGt56e3izYbo8s(Lorg/telegram/ui/Components/EmojiView$EmojiSearchAdapter;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/Runnable;Ljava/util/ArrayList;)V

    return-void
.end method
