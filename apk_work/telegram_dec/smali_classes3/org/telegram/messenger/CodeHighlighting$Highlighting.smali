.class Lorg/telegram/messenger/CodeHighlighting$Highlighting;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/CodeHighlighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Highlighting"
.end annotation


# instance fields
.field language:Ljava/lang/String;

.field result:Landroid/text/SpannableString;

.field text:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/CodeHighlighting$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/CodeHighlighting$Highlighting;-><init>()V

    return-void
.end method
