.class public final synthetic Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/Utilities$CallbackReturn;


# instance fields
.field public final synthetic f$0:Lorg/telegram/ui/web/WebActionBar;


# direct methods
.method public synthetic constructor <init>(Lorg/telegram/ui/web/WebActionBar;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/web/WebActionBar;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lorg/telegram/ui/web/WebActionBar$$ExternalSyntheticLambda9;->f$0:Lorg/telegram/ui/web/WebActionBar;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p1}, Lorg/telegram/ui/web/WebActionBar;->$r8$lambda$JBJreulGZY_Yh0VHBMwDddTFJCw(Lorg/telegram/ui/web/WebActionBar;Ljava/lang/Integer;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method
