.class Lorg/telegram/messenger/FileRefController$Waiter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/FileRefController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Waiter"
.end annotation


# instance fields
.field private locationKey:Ljava/lang/String;

.field private parentKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/FileRefController$Waiter;->locationKey:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/FileRefController$Waiter;->parentKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/FileRefController$Waiter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/FileRefController$Waiter;->locationKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/FileRefController$Waiter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/telegram/messenger/FileRefController$Waiter;->parentKey:Ljava/lang/String;

    return-object p0
.end method
