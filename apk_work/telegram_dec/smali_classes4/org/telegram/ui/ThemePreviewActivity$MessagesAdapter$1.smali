.class Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$1;
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
.method constructor <init>(Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;ILorg/telegram/tgnet/TLRPC$Message;ZZLorg/telegram/ui/ThemePreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$1;->this$1:Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter;

    iput-object p6, p0, Lorg/telegram/ui/ThemePreviewActivity$MessagesAdapter$1;->val$this$0:Lorg/telegram/ui/ThemePreviewActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    return-void
.end method


# virtual methods
.method public needDrawAvatar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
