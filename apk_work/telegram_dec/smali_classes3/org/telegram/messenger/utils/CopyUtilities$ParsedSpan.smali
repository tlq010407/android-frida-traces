.class Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/utils/CopyUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParsedSpan"
.end annotation


# instance fields
.field final lng:Ljava/lang/String;

.field final type:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;->type:I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;->lng:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;->type:I

    iput-object p2, p0, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;->lng:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lorg/telegram/messenger/utils/CopyUtilities$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(ILorg/telegram/messenger/utils/CopyUtilities$1;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/utils/CopyUtilities$ParsedSpan;-><init>(I)V

    return-void
.end method
