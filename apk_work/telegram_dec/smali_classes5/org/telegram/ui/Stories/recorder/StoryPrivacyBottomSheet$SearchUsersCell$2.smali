.class Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;-><init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

.field final synthetic val$this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$2;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    iput-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$2;->val$this$0:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$2;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$13500(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$2;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$13600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell$2;->this$1:Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;->access$13600(Lorg/telegram/ui/Stories/recorder/StoryPrivacyBottomSheet$SearchUsersCell;)Lorg/telegram/messenger/Utilities$Callback;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
