.class Lorg/telegram/ui/Stories/StoriesViewPager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/StoriesViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/StoriesViewPager;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/StoriesViewPager;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/StoriesViewPager$1;->this$0:Lorg/telegram/ui/Stories/StoriesViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Stories/StoriesViewPager$1;->this$0:Lorg/telegram/ui/Stories/StoriesViewPager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/StoriesViewPager;->access$002(Lorg/telegram/ui/Stories/StoriesViewPager;Z)Z

    return-void
.end method
