.class Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$3;
.super Lorg/telegram/messenger/MessageObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;-><init>(Lorg/telegram/ui/ThemePreviewActivity;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

.field final synthetic val$this$0:Lorg/telegram/ui/ThemePreviewActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;ILorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;ZZLorg/telegram/ui/ThemePreviewActivity;)V
    .locals 6

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$3;->this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    iput-object p7, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$3;->val$this$0:Lorg/telegram/ui/ThemePreviewActivity;

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/messenger/MessageObject;ZZ)V

    return-void
.end method


# virtual methods
.method public needDrawAvatar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
